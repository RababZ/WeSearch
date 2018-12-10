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
  true
end

def new?
  true
end

def edit?
  update?
end

def destroy?
  #record.project.manager == user
  record.project.manager == user
end

def update?
  #record.project.manager == user
  (record.project.expert == user) || (record.project.manager == user)
end

def edit_to_close?
  true
end

def close?
  true
end

end
