require 'rails_helper'
RSpec.describe 'logging out' do
  before do
    @user = create_user
    log_in @user
  end
  it 'displays "Log Out" button when user is logged on' do
    expect(page).to have_link('Logout')
  end
  it 'logs out user and redirects to login page' do
    click_link 'Logout'
    expect(current_path).to eq('/')
  end
end
