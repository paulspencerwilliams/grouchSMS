class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :phone
   devise_parameter_sanitizer.for(:sign_up) << :stravaid
   devise_parameter_sanitizer.for(:sign_up) << :twitterhandle
   devise_parameter_sanitizer.for(:sign_up) << :authtoken
   devise_parameter_sanitizer.for(:sign_up) << :weather
 end


 def render_json_response(type, hash)
   unless [ :ok, :redirect, :error ].include?(type)
     raise "Invalid json response type: #{type}"
   end

   # To keep the structure consistent, we'll build the json 
   # structure with the default properties.
   #
   # This will also help other developers understand what 
   # is returned by the server by looking at this method.
   default_json_structure = { 
     :status => type, 
     :html => nil, 
     :message => nil, 
     :to => nil }.merge(hash)

     render_options = {:json => default_json_structure}  
     render_options[:status] = 400 if type == :error

     render(render_options)
 end


end
