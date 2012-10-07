Feature: Displaying a project page
  In order to find detailed information about a project
  a user
  wants to view the project's page

  Scenario: Displaying the project's page
    Given there is a User with a Project
      And I am on the User's Project page
     Then the page should load successfully
   
