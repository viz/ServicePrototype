Feature: Communicate with members
  So that I can email current members
  As an committee member
  I want to get a list of current members for my organisation

  Scenario: Add member to one org but not a second
    Given an organisation named "fishing"
      Undefined step: "an organisation named "fishing"" (Cucumber::Undefined)
      features/organisation_management.feature:14:in `Given an organisation named "fishing"'
    And an organisation name "woodworking"
      Undefined step: "an organisation name "woodworking"" (Cucumber::Undefined)
      features/organisation_management.feature:15:in `And an organisation name "woodworking"'
    And an person named "Peter Whitfield"
      Undefined step: "an person named "Peter Whitfield"" (Cucumber::Undefined)
      features/organisation_management.feature:16:in `And an person named "Peter Whitfield"'
    When I add that person as a member to the organisation named "fishing"
      Undefined step: "I add that person as a member to the organisation named "fishing"" (Cucumber::Undefined)
      features/organisation_management.feature:17:in `When I add that person as a member to the organisation named "fishing"'
    Then the organisation named "fishing" has 1 member named "Peter Whitfield"
      Undefined step: "the organisation named "fishing" has 1 member named "Peter Whitfield"" (Cucumber::Undefined)
      features/organisation_management.feature:18:in `Then the organisation named "fishing" has 1 member named "Peter Whitfield"'
    And the organisation named "woodworking" has 0 members
      Undefined step: "the organisation named "woodworking" has 0 members" (Cucumber::Undefined)
      features/organisation_management.feature:19:in `And the organisation named "woodworking" has 0 members'

