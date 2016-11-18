require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word count Sinatra test', {:type => :feature}) do
  it('recieves inputted phrase and word, then returns number of occurances for inputted word') do
    visit('/')
    fill_in('input_phrase', :with => 'a penny saved is a penny earned')
    fill_in('input_word', :with => 'penny')
    click_button('Submit')
    expect(page).to have_content('2 times')
  end
end
