class PagesController < ApplicationController
  def welcome
    redirect_to user_path(current_user) if user_signed_in?
  end

  def settings; end

  def dashboard; end
end
