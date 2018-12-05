class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
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
    record.client == user || record.manager == user
  end

  def update?
    # only the person who created the project can edit
    record.client == user || record.manager == user
  end

end
