class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def create
   #  # binding.pry
   # @profile = current_user.profile(params[:profile]) 
   @user_id = current_user.id
   @profile = Profile.new params[:profile]
   # binding.pry 
   @profile.user_id = @user_id
   @profile.save
   redirect_to '/'
  end

  def new
    @profile = Profile.new
  end
  def show
    @user = User.find(params[:id])
    @profile = Profile.find(params[:id])
  end

end
