Feature: Updating a Project from origin
  In order to keep projects current
  a user
  wants to update a project from its origin

  Scenario: Successful update of a project from origin
    Given I am signed in through GitHub
      And I have a Project
      And I am on my Project's page
     When I update the Project from origin
     Then I should be on the Project page
      And I should see a successful Project update message
