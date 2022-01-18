class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.custom_display
  end

  def all
    @message = Message.new
    @messages=Message.all

    render :index
  end

end
