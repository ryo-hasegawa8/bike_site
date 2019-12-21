class UsersController < ApplicationController
   before_action :user_signed_in, only: [:edit, :update]

  def show
    @user = User.find_by(id: params[:id])
  end

  private
    #ストロングパラメーター
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :introduce, :image )
    end

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
