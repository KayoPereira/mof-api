class QuestionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    true
  end

  def create?
    !user.nil?
  end

  def destroy?
    update?
  end
end
