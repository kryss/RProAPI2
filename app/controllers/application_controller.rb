class ApplicationController < ActionController::Base
  protect_from_forgery
  has_mobile_fu
  before_filter :authenticate_user!
  
  
  protected 
  def current_local
    @current_local ||= Local.find(session[:selected_local])
  end
  
end
