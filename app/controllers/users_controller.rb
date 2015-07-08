class UsersController < ApplicationController

   def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.create params[:user]
    # @user.avatar = nil
    # @user.save
    redirect_to root_path

  end


  

  def show
    @user = User.find params[:id]
    @test = session[:user_id]
  end

  def destroy
    @user =  User.find(params[:id])
    @user.destroy
    flash[:alert] = "Successful Deletion"
    redirect_to users_path
  end
end
