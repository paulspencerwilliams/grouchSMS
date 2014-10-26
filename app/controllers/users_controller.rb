class UsersController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:wanting_weather]

  def wanting_weather
    render json: User.wanting_weather  
  end

  def update_location
    if request.post?
      user = User.find(params[:user_id])
      user.longitude = params[:longitude]
      user.latitude = params[:latitude]
      user.save
    end
    render :nothing => true
  end

  def update_authtoken
   if request.post?
    user = User.find(params[:user_id])
    user.authtoken = params[:authtoken]
    user.save
   end
   render :nothing => true
  end
end
