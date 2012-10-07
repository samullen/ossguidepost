Feature: Repository Import
  In order to list and score repositories
  a user
  wants to import repositories (only GitHub for now)

  Scenario: Successful Import
    Given I am signed in through GitHub
     When I navigate to my Profile
      And I import my GitHub Projects
     Then I should see a successful import message
      And I should see my Projects listed on my Profile
