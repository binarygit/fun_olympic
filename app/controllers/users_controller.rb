class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
    @minimum_password_length = 6
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_back_or_to @user, notice: "User successfully updated"
    else
      flash.now.alert = 'Could not update user.'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :username, :phone_number, :country_id, :password, :password_confirmation, :admin)
  end
end
