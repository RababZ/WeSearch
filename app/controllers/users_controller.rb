class UsersController < ApplicationController
  def index
    @all_users = policy_scope(User)
    @users = @all_users.where(role: "expert")
    if params[:country] && !params[:country].empty?
      @users = @users.where(country: params[:country])
    end

    if params[:industry] && !params[:industry].empty?
      @users = @users.where(industry: params[:industry])
    end

    if params[:hours_available_per_weeek] && !params[:hours_available_per_weeek].empty?
      @users = @users.where(hours_available_per_weeek: params[:hours_available_per_weeek])
    end

  end
end
