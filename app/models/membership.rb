class Membership < ActiveRecord::Base

  belongs_to :organisation
  belongs_to :person

  def setPerson (p)
    p.memberships << self
  end
  
end
