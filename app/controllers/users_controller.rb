class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:create]

  def create
    user = User.new(user_params)
    if user.save && user_params[:password] == user_params[:password_confirmation]
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
    else
      render json: {errors: user.errors}, status: 401
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
