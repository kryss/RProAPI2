class ApplicationController < ActionController::Base
  protect_from_forgery
  has_mobile_fu 
  before_filter :set_mobile_view
  before_filter :authenticate_user!, :except => :input
  include ApplicationHelper
  

  
  protected 
  def current_local
    @current_local ||= Local.find(session[:selected_local])
  end
  
  def set_mobile_view
    logger.debug "[DEBUG] MOBILE" if is_mobile_device?
    session[:mobile_view] = false
  end
  
end
