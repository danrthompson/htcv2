class CommentsController < ApplicationController
  before_filter :load_commentable

  def create
    authorize! :create, AdvicePost
    @comment = @commentable.comments.new(params[:comment])
    @comment.user_id = current_user ? current_user.id : -1

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable, notice: 'Comment was successfully created.'}
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { redirect_to @commentable, notice: @comment.errors.full_messages.first }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    authorize! :destroy, @comment
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @commentable }
      format.json { head :no_content }
    end
  end

  private

  def load_commentable
    parent_klasses = [AdvicePost]
    klass = parent_klasses.detect { |c| params["#{c.name.underscore}_id"] }
    @commentable = klass.find(params["#{klass.name.underscore}_id"])
  end


end
