class ReceiverController < ApplicationController
  layout "empty"
  before_filter :auth_sender
=begin
  TODO CHANGE REQUEST TO POST
=end  
  def input
    logger.debug "[debug] #{params.inspect}"
  end

  private
  def auth_sender
    redirect_to root_path if (params[:yhm].nil? || params[:tok].nil? || !check_credential)
  end
  
  def check_credential
    user = User.find_by_email(params[:yhm])
    return false if (user.nil?)
    get_token(user.email, user.phone) == params[:tok]
  end

end
