class Post < ActiveRecord::Base
  resourcify

  attr_accessible :content, :title, :user_id, :tags_attributes

  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  
  belongs_to :user, :inverse_of => :posts
  has_many :comments, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } } 
end
