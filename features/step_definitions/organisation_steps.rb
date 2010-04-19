Given /^an organisation named "([^\"]*)"$/ do |arg1|
  @organisation = Organisation.new
  @organisation.name = arg1
  @organisation.save
end

Given /^a person named "([^\"]*)"$/ do |arg1|
  @person = Person.new
  @person.fullname = arg1
  @person.save
end

When /^I add that person as a member$/ do
  @organisation.addMembership(@person)
end

When /^I add that person as a member to the organisation named "([^\"]*)"$/ do |arg1|
  @org1 = Organisation.find_last_by_name(arg1)
  @org1.addMembership(@person)
  @org1.save
end

Then /^the current member is "([^\"]*)"$/ do |arg1|
  @organisation.memberships.first.person.fullname.should == arg1
end

Then /^the organisation named "([^\"]*)" has 1 member named "([^\"]*)"$/ do |arg1, arg2|
  @org2 = Organisation.find_last_by_name(arg1)
  @org2.memberships.count.should == 1
  @org2.members.first.fullname.should == arg2
end

Then /^the organisation named "([^\"]*)" has no members$/ do |arg1|
  @org2 = Organisation.find_last_by_name(arg1)
  @org2.memberships.count.should == 0

end
