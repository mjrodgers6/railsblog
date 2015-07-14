class PostsController < ApplicationController
 

  def index
    @posts = Post.all
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to posts_path
  end

  def show
    user = current_user.username
    @post = Post.find params[:id]
  end


    private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def post_params
    params.require(:post).permit(:message, :zip, :user_id)
  end
end
