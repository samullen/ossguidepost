Feature: Editing a project
  In order to allow projects to be more easily found
  a user
  wants to update a project with more complete information

  Scenario: Successful editing of a project
    Given I am signed in through GitHub
      And I have a Project
      And I am on my Project's edit page
     When I update the Project
     Then I should be on the Project page
      And I should see a successful Project update message
