class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # for now everyone can see all projects
      scope.all
    end
  end

  def create?
    # record.client == user || record.manager == user || user.type == "manager"
    # TBU - for now, anyone can create a project
    # we need to add type of user to be able to differentiate
    true
  end

  def show?
    # only the person who created the project can see the project
    user_is_manager?
  end

  def edit?
    # only the person who created the project can edit
    user_is_manager?
  end


  def update?
    # only the person who created the project can edit
    user_is_manager?
  end

  def destroy?
    # only the person who created the project can delete
    user_is_manager?
  end

  def edit_to_close?
    user_is_expert? || user_is_manager? #true
  end

  def close?
    user_is_expert? || user_is_manager? #true
  end


  private

  def user_is_manager?
    record.manager == user || record.manager.nil?
  end

  def user_is_expert?
    record.expert == user
  end
end
