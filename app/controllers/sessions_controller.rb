class SessionsController < ApplicationController
  before_action :if_logged_in?, except: [:destroy]

  def new
  end

  def create

    @user = User.find_by(username: params[:session][:username].downcase)

    if @user && (@user.username.eql?('sourav') || @user.username.eql?('rimi')) && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      puts "-----------------------++++--------------+++++------++++--#{logged_in?}"
      flash[:success] = 'You are successfully logged in'
      redirect_to root_path
    else
      if @user && (@user.username.eql?('sourav') || @user.username.eql?('rimi'))
        flash.now[:error] = 'Hmm! looks like you entered wrong credentials'
      else
        flash.now[:error] = "You can't access the site right now"
      end
      render :new
      
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You are logged out'
    redirect_to login_path
  end

  private

  def if_logged_in?
    if logged_in?
      redirect_to root_path
    end
  end
end
