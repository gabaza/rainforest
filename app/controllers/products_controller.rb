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
end

def show
end

def update
end

def delete
end



end
