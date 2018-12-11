class UsersController < ApplicationController
  def index
    @all_users = policy_scope(User)
    @users = @all_users
    if params[:country] && !params[:country].empty?
      @users = @users.where(country: params[:country])
    end

    if params[:industry] && !params[:industry].empty?
      @users = @users.where(industry: params[:industry])
    end

    if params[:availability] && !params[:industry].empty?
      @users = @users.where(availability: params[:availability])
    end
  end
end
