class Comment < ActiveRecord::Base
  resourcify

  belongs_to :post
  attr_accessible :body, :commenter
end
