Feature: Editing a project
  In order to allow projects to be more easily found
  a user
  wants to update a project with more complete information

  Scenario: Successful editing of a project
    Given I am signed in as a User
      And I have a Project
     When I navigate to edit the Project
      And I update the Project
     Then I should be on the Project page
      And I should see a successful Project update message
