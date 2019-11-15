class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html  { redirect_to(posts_index_url, :notice => 'Post was successfully created.') }
        format.json  { render :json => posts_index_url, :status => :created, :location => @post }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def post_params
    params.require(:post).permit(:title, :author, :description)
  end
end
