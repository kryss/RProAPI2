class ApplicationController < ActionController::Base
  protect_from_forgery
  has_mobile_fu
  
  
  protected
  def active_menu_button(ac)
    session[:current_page] = Array.new(3)
    session[:current_page][ac] = "active" 
  end
end
