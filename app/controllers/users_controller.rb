class UsersController < ApplicationController

   def index
    @users = User.all
  end

  def new
    @user = User.new
    render :layout => false
  end

  def create
    @user = User.create (user_params)
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
 private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
