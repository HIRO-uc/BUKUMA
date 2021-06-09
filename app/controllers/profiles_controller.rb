class ProfilesController < ApplicationController
  before_action :current_path_profile, only: [:edit, :update]

  def edit
  
  end

  def update
    @profile.update(profile_params)
    redirect_to user_path(@profile.user)
  end

  private
  def profile_params
    params.require(:profile).permit(:image, :nickname, :self_introduction, :website)
  end

  def current_path_profile
    @profile = Profile.find(params[:id])
  end
end
