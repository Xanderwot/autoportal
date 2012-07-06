class Mark < ActiveRecord::Base
  attr_accessible :name
  include Enumerize
  validates :name, presence: true

  enumerize :name, :in => CarValue.options('name') || []
end
