class News < ActiveRecord::Base
  attr_accessible :body, :created_by_id, :title
end
