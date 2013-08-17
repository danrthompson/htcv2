class NewsPostsController < ConversationPostsController

	private

	def post_klass
		NewsPost
	end

	def post_url_helper
    news_posts_url
	end
end