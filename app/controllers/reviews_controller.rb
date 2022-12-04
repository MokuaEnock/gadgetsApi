class ReviewsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid,
              with: :render_unprocessable_entity_response

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
    review = Review.create!(review_params)
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

  def render_not_found_response
    render json: { error: "Review not found" }, status: :not_found
  end

  def review_params
    params.permit(:message, :rating, :user_id, :product_id)
  end

  def render_unprocessable_entity_response(invalid)
    render json: {
             error: invalid.record.errors.full_messages
           },
           status: :unprocessable_entity
  end
end
