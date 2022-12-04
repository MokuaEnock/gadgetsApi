class SessionsController < ApplicationController

  def click
    cookies[:click] ||= 0
    cookies[:click] += cookies[:click].to_i
    cookies[:click] ||= 0
    session[:click] += 1
  end
end
