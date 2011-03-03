class Link < ActiveRecord::Base
  validates :url, :presence => true
  validates :title, :presence => true
  
  validates_uniqueness_of :url, :case_sensitive => false
  
  belongs_to :user
end
