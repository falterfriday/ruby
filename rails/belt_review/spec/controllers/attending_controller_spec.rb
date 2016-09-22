require 'rails_helper'

RSpec.describe AttendingController, type: :controller do
  before do
    @user = create_user
  end
  describe "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot access create" do
      get :create, id: @user
      expect(response).to redirect_to('/')
    end
    it "cannot access destroy" do
      get :destroy, id: @user
      expect(response).to redirect_to('/')
    end
  end
end
