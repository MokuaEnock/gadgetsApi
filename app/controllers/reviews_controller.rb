class ReviewsController < ApplicationController

  def index
    if params[:product_id]
      product = Product.find(params[:product_id])
      reviews = product.reviews
    else
      reviews = Review.all
    end
    render json: reviews, include: :product
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def create
    review = @current_user.reviews.create!(review_params)
    render json: review
  end

  def destroy
    review = Review.find(params[:id])
    if review
      review.destroy
      head :no_content
    else
      render json: { error: "Bird not found" }, status: :not_found
    end
  end

  private

  def review_params
    params.permit(:message, :rating, :user_id, :product_id)
  end
end
