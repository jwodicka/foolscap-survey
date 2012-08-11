Feature: show panels

  As a Foolscap member
  In order to evaluate programming choices
  I want to see all proposed panels

  Scenario: view a survey
    Given a survey page
    When I read the page
    Then I should see a list of all panels for Foolscap

