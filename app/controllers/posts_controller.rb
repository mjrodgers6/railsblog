class PostsController < ApplicationController
 

  def index
    @posts = Post.all
  end

  def create
     # binding.pry
    @post = current_user.posts.create(params[:post])
    redirect_to '/'
  end

  def new
    @post = Post.new
  end

  def show
    
  end

end
