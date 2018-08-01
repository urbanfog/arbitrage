# frozen_string_literal: true

require 'rails_helper.rb'

feature 'selling products' do
  scenario 'list a product' do
    visit '/'
    click_link 'Sell something'
    fill_in 'Title', with: 'Used diapers. Well soiled.'
    fill_in 'Description', with: 'Great used diapers.'
    fill_in 'Address', with: 'City hall'
    fill_in 'Price', with: 0
    attach_file('Image', 'spec/files/images/diapers.jpg')
    click_button 'Post'

    expect(page).to have_content('Used diapers. Well soiled.')
    expect(page).to have_css("img[src*='diapers.jpg']")
  end
end
