class Comment < ActiveRecord::Base
  resourcify

  belongs_to :post
  belongs_to :user, :inverse_of => :comments

  attr_accessible :body, :user_id
end
