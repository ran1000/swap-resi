class SpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user) # If users can only see their items
      # scope.where("name LIKE 't%'") # If users can only see items starting with `t`
    end

    def new?
      true
    end

    def create?
      true
    end
  end
end
