class UsersController < ApplicationController
  before_action :if_user_loggedin?

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You are registered but you can't login in this site now it is in restricted state !"
      redirect_to login_path
    else
      render :new
    end
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :gender)
  end

  def if_user_loggedin?
    redirect_to root_path if logged_in?
  end

end
