module ApplicationHelper
=begin
  TODO improve active_tab? helper and make token dynamic and expirable
=end

  $salt = "foofoo"

  def get_current_user_token
    if current_user
      Digest::SHA1.hexdigest("--#{current_user.email}-#{$salt}-#{current_user.phone}--")
    else
      "TOKEN ERROR !"
    end
  end
  
  def active_tab?(local)
    "active" if (params[:controller] != "home") and ((params[:controller] == "locals" and params[:id] == local.id.to_s) or 
                ((params[:controller] != "users" and session[:selected_local] == local.id.to_s) and 
                  (params[:controller] != "locals" and params[:action] != "new")))
  end
  
  
end
