class ApplicationController < ActionController::API
  include ActionController::Cookies

  private

  def authorize
    @current_user = User.find_by(id: session[:user_id])
    unless @current_user
      render json: { errors: ["Not authorized"] }, status: :unauthorized
    end
  end
end
