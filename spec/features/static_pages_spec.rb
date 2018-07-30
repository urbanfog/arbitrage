require 'rails_helper.rb'

feature 'the home page' do
  scenario 'displays welcome message' do
    visit '/'
    expect(page).to have_content('Welcome to arbitrage')
  end
end
