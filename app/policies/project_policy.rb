class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # record.client == user || record.manager == user || user.type == "manager"
    true
  end
end
