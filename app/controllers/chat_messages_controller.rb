class ChatMessagesController < ApplicationController
  def index
  	if cookies.has_key? :user_name
  		@messages = ChatMessage.get_messages
  	else
  		render :template => "chat_messages/create_user_name"
  	end
  end

  def create
  	ChatMessage.create(:user => cookies[:user_name], :message => params[:message])
  	Pusher['chat-channel'].trigger('new-message', ChatMessage.get_messages.to_json)
  	redirect_to '/'
  end

  def save_user_name
  	cookies[:user_name] = params[:user_name]
  	redirect_to '/'
  end
end
