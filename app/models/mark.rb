class Mark < ActiveRecord::Base
  attr_accessible :name, :logo
  include Enumerize
  validates :name, :logo, presence: true

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  test_array = Rails.env.test? ? ['Ford', 'BMW', 'Audi'] : []

  enumerize :name, :in => CarValue.options('name') || test_array if CarValue.nil?
end
