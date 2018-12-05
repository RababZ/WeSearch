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
    user_is_owner?
  end

  def update?
    # only the person who created the project can edit
    user_is_owner?
  end

  def destroy?
    # only the person who created the project can delete
    user_is_owner?
  end

  private

  def user_is_owner?
    record.client == user || record.manager == user
  end
end
