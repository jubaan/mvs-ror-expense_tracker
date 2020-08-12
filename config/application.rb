require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module Capstone
  class Application < Rails::Application
    config.load_defaults 6.0

    config.generators.system_tests = nil

    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.assets.initialize_on_precomplie = false
  end

  JitPreloader.globally_enabled = true

  ActiveSupport::Notifications.subscribe('n_plus_one_query') do |_event, data|
    message =
      "N+1 Query detected: #{data[:association]} on #{data[:source].class}"
    backtrace = caller.select { |r| r.starts_with?(Rails.root.to_s) }
    Rails.logger.debug("\n\n#{message}\n#{backtrace.join("\n")}\n".red)
  end
end
