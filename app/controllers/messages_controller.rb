class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(msg_params)
    # render plain:message.inspect
    if message.save
      ActionCable.server.broadcast("chatroom_channel", { themsg: message_render(message) })
    end
  end

  private

  def msg_params
    params.require(:message).permit(:msg)
  end

  def message_render(message)
    render(partial: 'message', locals: { message: message })
  end
end
