class Person < ActiveRecord::Base

  has_many :memberships
  has_many :organisations, :through => :memberships
  
end
