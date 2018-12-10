class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
  end

  def filter
    sql_query = " \
       users.country = :country \
       and users.hours_available_per_weeek between 0 and 20   \
       and users.availability = true \
     "
    @users = policy_scope(User).where(sql_query, country: "#{params[:country]}")
    authorize @users
  end

end
