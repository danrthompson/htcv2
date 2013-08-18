module ConversationPostHelper
	def create_votable_path_for_conversation_post(conversation_post)
		Proc.new do |vote_value|
			polymorphic_path(conversation_post, action: 'vote', type: vote_value)
		end
	end
end