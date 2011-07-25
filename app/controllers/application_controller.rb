class ApplicationController < ActionController::Base
  protect_from_forgery
  has_mobile_fu
  before_filter :authenticate_user!
  
end
