class UserPolicy < ApplicationPolicy
  def index?
    user?
  end

  def show?
    user?
  end

  def new?
    create?
  end

  def create?
    user?
  end

  def edit?
    update?
  end

  def update?
    user?
  end

  def destroy?
    user?
  end

  def permitted_attributes
    %i[date_of_birth email facebook_url first_name last_name]
  end
end
