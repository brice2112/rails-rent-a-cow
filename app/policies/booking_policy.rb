class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    true
  end

  def approve?
    record.cow.user == user
  end

  def decline?
    record.cow.user == user
  end


end
