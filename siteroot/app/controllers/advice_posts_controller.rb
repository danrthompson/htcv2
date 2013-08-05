class AdvicePostsController < ConversationPostsController

	private

	def post_klass
		AdvicePost
	end

	def post_url_helper
    advice_posts_url
	end
end