class UsersController < ApplicationController
  skip_before_filter :authenticate_user!

  def wanting_weather
    render json: User.wanting_weather  
  end
end
