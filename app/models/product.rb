class Product < ApplicationRecord
  
    has_many :reviews
    validates :name, presence: true
    validates :description, presence: true
    validates :price_in_cents, presence: true
    validates :price_in_cents, numericality: true


end
