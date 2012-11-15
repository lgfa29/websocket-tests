class ChatMessage < ActiveRecord::Base
	def self.get_messages
		return ChatMessage.all
	end
end
