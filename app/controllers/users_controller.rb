class UsersController < ApplicationController
  def index
  end

  def show
    active_menu_button(0)
    @user = current_user
  end

end
