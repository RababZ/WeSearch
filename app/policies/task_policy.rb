class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # user.role == "manager" ? scope.all : scope.where(user: user)
      #scope.all
      #scope.where(user: user).where(project.manager: user)
    end
  end

  def create?
    new?
  end

  def new?
    true#record.project.manager == user
  end

  def edit?
    update?
  end

  def destroy?
    #record.project.manager == user
    #record.project.manager == user
    user_is_manager?
  end

  def update?
    #record.project.manager == user
    #(record.project.expert == user) || (record.project.manager == user)
    user_is_expert? || user_is_manager?
  end

  def edit_to_close?
    user_is_expert? || user_is_manager? #true
  end

  def close?
    (user_is_expert? || user_is_manager?) && !user_is_client? #true
  end


  private

  def user_is_manager?
    record.project.manager == user || record.project.manager.nil?
  end

  def user_is_expert?
    record.project.expert == user
  end

  def user_is_client?
    record.project.client == user
  end

  def task_is_closed?
    record.status == true
  end

end
