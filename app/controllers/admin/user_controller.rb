class Admin::UserController < ApplicationController
  def index
    @user_list= User.all
    @organization = Organization.all
  end

  def update
     @user = User.find_by_id(params[:id])
     @user.update_attributes(user_params)
      redirect_to userlist_path
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def user_params
    params.require(:user).permit(:firt_name, :last_name,:email,:organization_id,:is_admin)
  end
end
