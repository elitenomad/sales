class Product < ApplicationRecord
  has_attached_file :file
  belongs_to :user
end
