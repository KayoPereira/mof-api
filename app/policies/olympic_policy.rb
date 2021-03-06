class OlympicPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.hierarchy_id == 1
  end

  def update?
    user.hierarchy_id == 1
  end

  def create?
    !user.nil?
  end

  def destroy?
    update?
  end
end
