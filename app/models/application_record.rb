class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def to_s
    "#{self.class.name}: ##{id}"
  end
end
