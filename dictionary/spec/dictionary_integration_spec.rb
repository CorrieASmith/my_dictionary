require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('/', {:type => :feature}) do
  it('Correctly opens index page') do
    visit('/')
    expect(page).to have_content("Welcome to My Dictionary!")
  end
end
