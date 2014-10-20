class UsersController < ApplicationController
	before_filter :set_my_variables

	def account
		@users ||= User.find(session[:user_id]) if session[:user_id]
		if !@users
			redirect_to :login
		end
	end

	def edit
		@users ||= User.find(session[:user_id]) if session[:user_id]
	end

	# Show Personal data
	def show
		@users ||= User.find(session[:user_id]) if session[:user_id]
	end

	# Update user
	def update
		respond_to do |format|
			@users ||= User.find(session[:user_id]) if session[:user_id]
			if @users.update(users_params)
				format.html { redirect_to :edit_profile, notice: 'Account have been update.' }
			else
              	format.html { render :edit }
              	format.json { render json: @users.errors, status: :unprocessable_entity }
			end
		end
	end

	# Create new users
	def new
		@users = User.new
	end

	def create
		
		@users = User.new(users_params)

		respond_to do |format|
	    	if @users.save
	        	format.html { redirect_to @users, notice: 'User was successfully created.' }
	        	format.json { render :index, status: :created, location: @users }
	      	else
	        	format.html { render :new }
	        	format.json { render json: @users.errors, status: :unprocessable_entity }
	      	end
	    end

	end

	private
	
	def users_params
  		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
	end
end