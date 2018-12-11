class ProductsController < ApplicationController


def create
  @product = Product.new
  @product.name = params[:product][:name]
  @product.description = params[:product][:description]
  @product.price_in_cents = params[:product][:price_in_cents]


end

def index
  @products = Product.all
end

def new
  @product = Product.new
end

def edit
  @product = Product.find(params[:id])
  @review = Review.find(params[:id])
end

def show
  @product = Product.find(params[:id])
  @reviews = @product.reviews
  @review = Review.new
end

def update
end

def delete
  @review = Review.delete(params[:id])
end



end
