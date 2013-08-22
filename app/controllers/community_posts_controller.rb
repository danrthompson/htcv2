class CommunityPostsController < ConversationPostsController

	private

	def post_klass
		CommunityPost
	end

	def post_url_helper
    community_posts_url
	end
end