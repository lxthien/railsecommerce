class ApplicationController < ActionController::Base
  #before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user
  helper ProductsHelper
  helper NewsHelper
  protect_from_forgery with: :exception

  # variables can use in any where
  private
  def set_my_variables
  	@newscatalogs = Newscatalog.all

    @productcattelephones = Productcat.where(parentcat_id: 1);
    @shopcollections = Productcat.where(parentcat_id: 2);

  	# Support menu header
  	@menu_active

  	# Support seo page
  	@page_title
  	@page_description
  	@page_keyword
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
    session[:user_id] = nil
  end

  def authenticate_user
    users ||= User.find(session[:user_id]) if session[:user_id]
    if !users
      redirect_to :login
    end
  end

end
