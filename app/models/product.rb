class Product < ApplicationRecord

  def price_in_dollars
  price_in_dollars = price_in_cents.to_f / 100
  sprintf("$%.2f", price_in_dollars)
end

    has_many :reviews
    validates :name, presence: true
    validates :description, presence: true
    validates :price_in_cents, presence: true
    validates :price_in_cents, numericality: true


end
