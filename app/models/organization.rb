class Organization < ActiveRecord::Base
  attr_accessible :name, :size, :url
  
  validates_presence_of :name, :url

  has_many :users

end
