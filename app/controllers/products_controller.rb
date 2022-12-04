class ProductsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    products = Product.all
    render json: products
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  # def reviews_index
  #   product = Product.find(params[:id])
  #   reviews = product.reviews
  #   render json: reviews, include: :product
  # end

  private

  def render_not_found_response
    render json: { error: "Product not found" }, status: :not_found
  end
end
