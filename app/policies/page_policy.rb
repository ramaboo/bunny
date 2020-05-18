class PagePolicy < ApplicationPolicy
  def home?
    true
  end

  def license?
    true
  end

  def system?
    user?
  end
end
