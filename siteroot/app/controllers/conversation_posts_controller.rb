class ConversationPostsController < ApplicationController

  def index
    @posts = ConversationPost.where(type: post_klass.name).find_with_reputation(:votes, :all, order: "votes desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
    @post = post_klass.find(params[:id])
    @comments = @post.root_comments.find_with_reputation(:votes, :all, {order: 'votes desc'})
    render layout: false
  end

  def create
    authorize! :create, post_klass
    @post = post_klass.new(params[post_klass.name.underscore])
    @post.user_id = current_user ? current_user.id : -1

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "#{post_klass.friendly_name} was successfully created." }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { redirect_to post_url_helper, notice: @post.errors.full_messages.first }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = post_klass.find(params[:id])
    authorize! :destroy, @post
    @post.destroy

    respond_to do |format|
      format.html { redirect_to post_url_helper }
      format.json { head :no_content }
    end
  end

  def vote
    authorize! :vote, post_klass
    value = params[:type] == "up" ? 1 : -1
    @post = post_klass.find(params[:id])
    @post.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Thank you for voting"
  end

  private

  def post_klass
    raise "post_klass should always be redefined by inheriting controllers"
  end

  def post_url_helper
    raise "post_url_helper should always be redefined by inheriting controllers"
  end
end
