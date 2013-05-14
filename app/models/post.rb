class Post < ActiveRecord::Base
  resourcify

  attr_accessible :content, :name, :title

  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  
  belongs_to :user, :inverse_of => :posts
  has_many :comments, :dependent => :destroy
end
