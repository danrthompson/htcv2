module AdvicePostHelper
	def create_votable_path_for_advice_post(advice_post)
		Proc.new do |vote_value|
			vote_advice_post_path(advice_post, type: vote_value)
		end
	end
end