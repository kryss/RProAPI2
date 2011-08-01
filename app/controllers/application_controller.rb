class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :prepare_for_mobile
  
  before_filter :authenticate_user!, :except => :input
  include ApplicationHelper


  def redirect_to(options = {}, response_status = {})
    if request.xhr?
      render(:update) {|page| page.redirect_to(options)}
    else
      super(options, response_status)
    end
  end
  
  protected 
  def current_local
    @current_local = Local.find(session[:selected_local])
  end
  
  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    request.format = :mobile if mobile_device?
  end
  
end
