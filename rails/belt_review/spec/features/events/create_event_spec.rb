require 'rails_helper'
RSpec.describe 'creating a event' do
  it 'creates a new event and redirects to events page' do
    user = create_user
    log_in user
    fill_in 'name', with: 'Special Trip'
    fill_in 'date', with: '01-01-2017'
    fill_in 'location', with: 'Home'
    click_button 'Add Event'
    expect(current_path).to eq("/events")
    expect(page).to have_text('Special Trip')
  end
end
