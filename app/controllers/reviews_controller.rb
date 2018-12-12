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

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:id])
    @review.product = @product
  end

  def update
  @review = Review.find(params[:id])
  @product = Product.find(params[:product_id])
  @review.product = @product
  @review.description = params[:review][:description]


  if @review.save
    redirect_to product_path(@product)
  else
    render edit_product_review_path
  end

  end


  def destroy
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
    @review.product = @product
    @review.destroy

    redirect_to product_path
  end
    
end
