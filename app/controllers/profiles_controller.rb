class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def create
   @user_id = current_user.id
   @profile = Profile.new params[:profile]
   @profile.user_id = @user_id
   @profile.save
   redirect_to '/'
  end

  def new
    @user = current_user
    @profile = Profile.new
  end
  def show
    @user = User.find(params[:id])
    @profile = Profile.find(current_user.profile.user_id)
  end

end
