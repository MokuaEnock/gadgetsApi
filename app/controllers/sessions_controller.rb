class SessionsController < ApplicationController
  def index
    session[:session_hello] ||= "Mokua"
    cookies[:cookies_hello] ||= "Mokua"
    render json: { session: session, cookies: cookies.to_hash }
  end

  def create
    user = User.find_by(email: params[:email])
    session[user_id] = user.id
    render json: user
  end
end
