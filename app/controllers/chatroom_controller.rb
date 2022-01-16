class ChatroomController < ApplicationController
  before_action :is_logged_in?

  def index
    @messages = Message.all
  end

  private

  def is_logged_in?
    redirect_to login_path unless logged_in?
  end

end
