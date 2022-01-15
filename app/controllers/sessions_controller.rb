class SessionsController < ApplicationController
  def new
  end

  def create
    render plain: params[:session]
  end

end
