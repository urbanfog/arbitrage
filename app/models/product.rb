# frozen_string_literal: true

# ActiveStorage used to attach and store images.
class Product < ApplicationRecord
  has_one_attached :image
end
