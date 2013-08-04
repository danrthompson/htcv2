class AdvicePostsController < ApplicationController

  def index
    @advice_posts = AdvicePost.find_with_reputation(:votes, :all, order: "votes desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advice_posts }
    end
  end

  def show
    @advice_post = AdvicePost.find(params[:id])
    @comments = @advice_post.root_comments.find_with_reputation(:votes, :all, {order: 'votes desc'})
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advice_post }
    end
  end

  def create
    authorize! :create, AdvicePost
    @advice_post = AdvicePost.new(params[:advice_post])
    @advice_post.user_id = current_user ? current_user.id : -1

    respond_to do |format|
      if @advice_post.save
        format.html { redirect_to @advice_post, notice: 'Advice post was successfully created.' }
        format.json { render json: @advice_post, status: :created, location: @advice_post }
      else
        format.html { redirect_to action: "index", notice: @advice_post.errors.full_messages.first }
        format.json { render json: @advice_post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @advice_post = AdvicePost.find(params[:id])
    authorize! :destroy, @advice_post
    @advice_post.destroy

    respond_to do |format|
      format.html { redirect_to advice_posts_url }
      format.json { head :no_content }
    end
  end

  def vote
    authorize! :vote, AdvicePost
    value = params[:type] == "up" ? 1 : -1
    @advice_post = AdvicePost.find(params[:id])
    @advice_post.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Thank you for voting"
  end
end
