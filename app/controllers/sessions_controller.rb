class SessionsController < ApplicationController
	
	before_filter :set_my_variables
	
	def new
  end

  # POST /sessions
  def create
  	user = User.authenticate params[:email], Digest::MD5.hexdigest(params[:password])
    if user
  		session[:user_id] = user.id
  		redirect_to root_path, :notice => "Welcome to rails app"
  	else
  		redirect_to :login, :alert => "Invalid email or password"
  	end
  end

  def destroy
  		session[:user_id] = nil
  		redirect_to root_path, :notice => "You have been logged out"
  end

end