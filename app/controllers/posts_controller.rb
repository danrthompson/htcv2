class PostsController < ApplicationController
  def index
    @tag = params[:tag]
    @posts = Post.find_recent(:tag => @tag, :include => :tags)

    respond_to do |format|
      format.html
      # format.atom { render :layout => false }
    end
  end

  def show
    @post = Post.find_by_permalink(*([:year, :month, :day, :slug].collect {|x| params[x] } << {:include => [:tags]}))
    authorize! :read, @post
  end

  def show_content_page
    @post = Post.where(content_page: true, slug: params[:id]).first
    @post || raise(ActiveRecord::RecordNotFound)
    @content_page = true
    render :show
  end
end
