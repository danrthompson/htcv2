class AdvicePostsController < ApplicationController

  def index
    @advice_posts = AdvicePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advice_posts }
    end
  end

  def show
    @advice_post = AdvicePost.find(params[:id])
    @comments = @advice_post.comments

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advice_post }
    end
  end

  def create
    @advice_post = AdvicePost.new(params[:advice_post])

    respond_to do |format|
      if @advice_post.save
        format.html { redirect_to @advice_post, notice: 'Advice post was successfully created.' }
        format.json { render json: @advice_post, status: :created, location: @advice_post }
      else
        format.html { render action: "index" }
        format.json { render json: @advice_post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @advice_post = AdvicePost.find(params[:id])
    @advice_post.destroy

    respond_to do |format|
      format.html { redirect_to advice_posts_url }
      format.json { head :no_content }
    end
  end
end
