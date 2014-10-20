class Admin::ApplicationController < ActionController::Base
	#before_action :require_login
	#http_basic_authenticate_with name: "frodo", password: "thering"

	private
  	def set_my_variables
  		@newscatalogs = Newscatalog.all
  		@productcats = Productcat.all
  	end

  	def require_login
  		if session[:isLogin] == false
  			redirect_to url_for(:controller => :news, :action => :index)
  		else
			redirect_to url_for(:controller => :products, :action => :index)
  		end
  	end
end
