class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def create
   @user_id = current_user.id
   @profile = Profile.new ( profile_params)
   @profile.user_id = @user_id
   @profile.save
   redirect_to '/'
  end

  def new
    @user = current_user
    @profile = Profile.new
  end

    private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def profile_params
    params.require(:profile).permit(:avatar, :name, :identity, :power, :contact, :user_id)
  end


  def show
    @user = User.find(params[:id])
    @profile = Profile.find(@user.id)
  end

end
