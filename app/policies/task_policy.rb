class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

def create?
  true
end

def new?
  true
end

def edit?
  true
end

def destroy?
  true #record.project.manager == user
end

def update?
  true #record.project.manager == user
end


end
