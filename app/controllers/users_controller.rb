class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  private
  #ストロングパラメーター
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :introduce, :image )
  end
end
