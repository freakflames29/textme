class SessionsController < ApplicationController
  def new
  end

  def create
    
    @user = User.find_by(username: params[:session][:username].downcase)
    if @user&.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      puts "-----------------------++++--------------+++++------++++--#{logged_in?}"
      flash[:success] = 'You are successfully logged in'
      redirect_to root_path
    else
      flash.now[:error] = 'Hmm! looks like you entered wrong credentials'
      render :new
    end
  end

  def destroy
    session[:user_id]=nil
    flash[:success] = 'You are logged out'
    redirect_to login_path
  end

end
