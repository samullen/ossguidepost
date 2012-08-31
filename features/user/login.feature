Feature: Logging in
  In order to get one's projects listed in OSS Guidepost
  a user
  wants to sign in to the site

  Scenario: Creating an account with GitHub
    Given I do not have an account
      And I am on the root page
     When I sign up with GitHub
     Then I should be on the root page
      And my account should be created

  Scenario: Signing in with GitHub
    Given I have an account
      And I am on the root page
     When I sign in with GitHub
     Then I should be on the root page

