class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Just the current user sees his/her bookings
      scope.where(user: user)
    end
  end

  def host_index?
    scope.all
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
