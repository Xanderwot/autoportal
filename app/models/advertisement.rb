class Advertisement < ActiveRecord::Base
  attr_accessible :advertisementable_id, :advertisementable_type, :created_by_id, :paid, :paid_at, :title
end
