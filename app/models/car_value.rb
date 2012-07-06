class CarValue < ActiveRecord::Base
  attr_accessible :car_values, :option
  serialize :car_values, Array
  validates :option, presence: true, uniqueness: true

  scope :for, lambda { |option| where(option: option) }

  def self.options(option)
    find_by_option(option).try(:car_values)
  end

end
