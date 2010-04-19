class Organisation < ActiveRecord::Base

  has_many :memberships
  has_many :members, :through => :memberships, :source => :person

  def addMembership (person)
    @membership = Membership.new
    @membership.setPerson(person)
    @membership.save
    memberships << @membership
  end
  
end
