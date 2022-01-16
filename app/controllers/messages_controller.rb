class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(msg_params)
    # render plain:message.inspect
    redirect_to root_path if message.save
  end

  private

  def msg_params
    params.require(:message).permit(:msg)
  end
end
