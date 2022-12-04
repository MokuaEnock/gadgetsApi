class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # def show
  #   user = User.find(params[:id])
  #   render json: user
  # end
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  private

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end
end
