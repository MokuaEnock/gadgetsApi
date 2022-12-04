class SessionController < ApplicationController

  def click
    cookies[:click] ||= 0
    cookie[:click] += 1
  end
  
end
