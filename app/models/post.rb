class Post < ActiveRecord::Base
  resourcify

  attr_accessible :content, :title, :user_id

  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  
  belongs_to :user, :inverse_of => :posts
  has_many :comments, :dependent => :destroy
end
