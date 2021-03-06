Feature: Search
  In order to find a project to work on
  a user
  wants to search the available projects

  Scenario: Basic search
    Given there are 15 "ruby" projects with difficulty below 4
      And I am on the home page
     When I search for difficulty 3 "ruby" projects
     Then I should see 10 search results
