class SupportRequestPolicy < ApplicationPolicy
  def edit?
    (record.user.id == user.id) || user.admin?
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
