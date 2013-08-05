class QuestionPostsController < ConversationPostsController

	private

	def post_klass
		QuestionPost
	end

	def post_url_helper
    question_posts_url
	end
end