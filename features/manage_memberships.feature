Feature: Manage memberships
  So that I can keep track of current members
  As an committee member
  I want to add members to my organisation

  Scenario: Add member to an organisation
    Given an organisation named "fishing"
    And a person named "Peter Whitfield"
    When I add that person as a member to the organisation named "fishing"
    And the organisation named "fishing" has 1 member named "Peter Whitfield"


  Scenario: Add member to one org but not a second
    Given an organisation named "fishing"
    And an organisation named "woodworking"
    And a person named "Peter Whitfield"
    When I add that person as a member to the organisation named "fishing"
    Then the organisation named "fishing" has 1 member named "Peter Whitfield"
    And the organisation named "woodworking" has no members

  Scenario: Add member to two organisations
    Given an organisation named "fishing"
    And an organisation named "woodworking"
    And a person named "Peter Whitfield"
    When I add that person as a member to the organisation named "fishing"
    And I add that person as a member to the organisation named "woodworking"
    Then the organisation named "fishing" has 1 member named "Peter Whitfield"
    And the organisation named "fishing" has 1 member named "Peter Whitfield"

