# frozen_string_literal: true

# Products factory for testing.
FactoryBot.define do
  factory :products do
    title 'Used diapers. Well soiled.'
    description 'Great used diapers.'
    address 'City hall'
    price 0
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/diapers.jpg', 'image/jpg')
  end
end

# product_one = create(:product, title: 'This is diaper one')
