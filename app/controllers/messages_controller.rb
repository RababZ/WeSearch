class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    all = policy_scope(Message)
    @messages = @conversation.messages
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
    authorize @message
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
    authorize @message
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id, :conversation_id)
  end
end
