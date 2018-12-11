class Review < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :description, presence: true

end
