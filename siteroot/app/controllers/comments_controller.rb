class CommentsController < ApplicationController
  before_filter :load_commentable

  @@max_nesting = 1

  def create
    authorize! :create, AdvicePost



    @comment = Comment.build_from(@commentable, (current_user ? current_user.id : -1), params[:comment][:body])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable, notice: 'Comment was successfully created.' }
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

  def get_parent_and_ensure_not_overnested(parent_id)
    if parent_id.blank? then
      return nil
    else
      parent_comment = Comment.find(parent_id)
      if parent_comment.level < @@max_nesting then
        return parent_comment
      end
    end
    # raise Exception
    return nil
  end


end
