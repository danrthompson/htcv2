class AdvicePostsController < ApplicationController
  # GET /advice_posts
  # GET /advice_posts.json
  def index
    @advice_posts = AdvicePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advice_posts }
    end
  end

  # GET /advice_posts/1
  # GET /advice_posts/1.json
  def show
    @advice_post = AdvicePost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advice_post }
    end
  end

  # GET /advice_posts/new
  # GET /advice_posts/new.json
  def new
    @advice_post = AdvicePost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advice_post }
    end
  end

  # GET /advice_posts/1/edit
  def edit
    @advice_post = AdvicePost.find(params[:id])
  end

  # POST /advice_posts
  # POST /advice_posts.json
  def create
    @advice_post = AdvicePost.new(params[:advice_post])

    respond_to do |format|
      if @advice_post.save
        format.html { redirect_to @advice_post, notice: 'Advice post was successfully created.' }
        format.json { render json: @advice_post, status: :created, location: @advice_post }
      else
        format.html { render action: "new" }
        format.json { render json: @advice_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advice_posts/1
  # PUT /advice_posts/1.json
  def update
    @advice_post = AdvicePost.find(params[:id])

    respond_to do |format|
      if @advice_post.update_attributes(params[:advice_post])
        format.html { redirect_to @advice_post, notice: 'Advice post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advice_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advice_posts/1
  # DELETE /advice_posts/1.json
  def destroy
    @advice_post = AdvicePost.find(params[:id])
    @advice_post.destroy

    respond_to do |format|
      format.html { redirect_to advice_posts_url }
      format.json { head :no_content }
    end
  end
end
