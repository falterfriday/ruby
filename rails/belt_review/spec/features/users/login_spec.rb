require 'rails_helper'
RSpec.describe 'logging in' do
  before do
    @user = create_user
  end
  it 'prompts for email and password' do
    visit '/'
    expect(page).to have_field('loginUser[email]')
    expect(page).to have_field('loginUser[password]')
  end
  it 'logs in user if email/password combination is valid' do
    log_in @user
    expect(current_path).to eq("/events")
    expect(page).to have_text(@user.first_name)
  end
  it 'does not sign in user if email/password combination is invalid' do
    log_in @user, 'wrong password'
    expect(page).to have_text('Invalid')
  end
end
