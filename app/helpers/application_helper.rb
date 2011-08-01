module ApplicationHelper
=begin
  TODO improve active_tab? helper and make token dynamic and expirable
=end

  

  def get_current_user_token
    return "TOKEN ERROR !" if current_user.nil?
    get_token(current_user.email, current_user.phone)
  end
  
  def get_token(useremail, userphone)
    salt = "foofoo"
    return "TOKEN ERROR !" if (useremail.nil? or userphone.nil?)
    Digest::SHA1.hexdigest("--#{useremail}-#{salt}-#{userphone}--")
  end
  
  
  def active_tab?(local)
    "active" if (params[:controller] != "home") and ((params[:controller] == "locals" and params[:id] == local.id.to_s) or 
                ((params[:controller] != "users" and session[:selected_local] == local.id.to_s) and 
                  (params[:controller] != "locals" and params[:action] != "new")))
  end
  
  
  def reload_flash
    page.replace "flash_messages", :partial => 'layouts/flash', :locals => {:flash => flash}
  end
  
  
end
