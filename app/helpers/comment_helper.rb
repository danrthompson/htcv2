module CommentHelper
	def create_votable_path_for_comment(commentable, comment)
		Proc.new do |vote_value|
			polymorphic_path([commentable, comment], action: 'vote', type: vote_value)
		end
	end
end