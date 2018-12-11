class ReviewsController < ApplicationController
  def create
    @review = Review.new
    @review.name = params[:review][:name]
    @review.text = params[:review][:text]
    @product = Product.find(params[:product_id])
    @review.product= @product

    if @review.save
      redirect_to product_path(@product)
    else
      render "products/show"
    end
  end

  def new
    @reviews = Review.new
  end
end
