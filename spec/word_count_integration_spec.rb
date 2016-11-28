require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word counter path', {:type => :feature}) do
  it('recieves inputted phrase and word, then returns a word count') do
    visit('/')
    fill_in('phrase', :with => 'a penny saved is a penny earned')
    fill_in('word', :with => 'penny')
    click_button('Submit')
    expect(page).to have_content('2')
  end
end
