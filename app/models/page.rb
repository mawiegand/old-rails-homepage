class Page < ActiveRecord::Base
  resourcify
  extend FriendlyId
  
  attr_accessible :content, :slug, :title
  
  validates_presence_of :title, :content

  friendly_id :title, use: :slugged
end
