require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe '#destroy' do
    sign_in
    before { delete :create }
    pending { should redirect_to(groups_url) }
  end
end
