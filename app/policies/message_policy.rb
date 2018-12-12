class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # user.role == "manager" ? scope.all : scope.where(user: user)
      #scope.all
      #scope.where(user: user).where(project.manager: user)
    end
  end

  def new?
    true
  end

  def create?
    true
  end

end
