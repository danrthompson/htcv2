class CommentsController < ApplicationController
  before_filter :load_commentable

  def create
    authorize! :create, Comment
    @comment = @commentable.comments.new(params[:comment])
    @comment.user_id = current_user ? current_user.id : -1

    if @comment.save
      # if @comment.parent_id then
      #   render 'comments/_comment_on_comment', locals: {comment: @comment}, layout: false
      # else
      #   render 'conversation_posts/_comment_on_conversation', locals: {comment: @comment, ajax: true}, layout: false
      # end

      render 'comments/_comment_on_community_post', locals: {comment: @comment, visible: true}, layout: false      
      
      # format.html { redirect_to @commentable.class, notice: 'Comment was successfully created.'}
      # format.json { render json: @comment, status: :created, location: @comment }
    else
      # redirect_to @commentable.class, notice: @comment.errors.full_messages.first
      render text: @comment.errors.full_messages.first, status: :unprocessable_entity
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    authorize! :destroy, @comment
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @commentable.class }
      format.json { head :no_content }
    end
  end

  # def vote
  #   authorize! :vote, Comment
  #   value = params[:type] == "up" ? 1 : -1
  #   @comment = Comment.find(params[:id])
  #   @comment.add_or_update_evaluation(:votes, value, current_user)
  #   redirect_to :back, notice: "Thank you for voting"
  # end

  private

  def load_commentable
    # parent_klasses = [AdvicePost, QuestionPost, NewsPost]
    parent_klasses = [CommunityPost]
    klass = parent_klasses.detect { |c| params["#{c.name.underscore}_id"] }
    @commentable = klass.find(params["#{klass.name.underscore}_id"])
  end


end
