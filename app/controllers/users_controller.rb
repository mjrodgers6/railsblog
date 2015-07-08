class UsersController < ApplicationController
   def index
    @users = User.all
  end

  def create
     # binding.pry
    @user = User.create params[:user]
    redirect_to '/'
  end

  def new
    @user = User.new
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
