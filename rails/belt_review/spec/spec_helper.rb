RSpec.configure do |config|

    config.expect_with :rspec do |expectations|
        expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    end

    config.mock_with :rspec do |mocks|
        mocks.verify_partial_doubles = true
    end

    config.shared_context_metadata_behavior = :apply_to_host_groups

end

def create_user first_name='kobe',last_name='bryant', email='kobe@lakers.com', location='Carderock', state='MD', password='password', password_confirmation='password'
    User.create(first_name: first_name, last_name: last_name, email: email, location:location, state:state, password: password, password_confirmation: password_confirmation)
end

def log_in user, password='password'
    visit '/'
    fill_in 'loginUser[email]', with: user.email
    fill_in 'loginUser[password]', with: password
    click_button 'Login'
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
