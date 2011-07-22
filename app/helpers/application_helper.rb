module ApplicationHelper
  $salt = "foofoo"
  
  
  def get_current_user_token
    if current_user
      Digest::SHA1.hexdigest("--#{current_user.email}-#{$salt}-#{current_user.phone}--")
    else
      "TOKEN ERROR !"
    end
  end
end
