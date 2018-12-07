class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact_us]

  def home
  end

  def profile
    @user = current_user
    authorize @user
  end

  def profile_update
    @user = current_user
    authorize @user
    if @user.update(profile_params)
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  def contact_us
  end

  private

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
