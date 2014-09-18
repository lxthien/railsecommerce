class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # variables can use in any where
  private
  def set_my_variables
  	@newscatalogs = Newscatalog.all
  end

end
