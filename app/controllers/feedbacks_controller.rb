class FeedbacksController < ApplicationController

	def create
		feedback = Feedback.create(params[:feedback])
		if feedback.valid? then
			if current_user then
				feedback.user_id = current_user.id
				feedback.save
			end
			render json: true,  status: :created and return
		end
		render text: 'boo',  status: :unprocessable_entity

	end

end