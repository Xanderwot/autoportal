class Mark < ActiveRecord::Base
  attr_accessible :name
  include Enumerize
  validates :name, presence: true

  test_array = Rails.env.test? ? ['Ford', 'BMW', 'Audi'] : []

  enumerize :name, :in => CarValue.options('name') || test_array if CarValue.nil?
end
