Feature: Register 
  In order to get access to the site 
  As a user
  I want to be able to sign up

  Background:
    Given I am not logged in

  Scenario: User registers with valid credentials
    When I register with valid user credentials
    Then I should see a successful registration message

  Scenario: User registers with invalid email
    When I register with an invalid email
    Then I should see an invalid email message

  Scenario: User registers without password
    When I sign up without a password
    Then I should see a missing password message

  Scenario: User registers without password confirmation
    When I sign up without a password confirmation
    Then I should see a missing password confirmation message

  Scenario: User registers with mismatched password and confirmation
    When I sign up with a mismatched password confirmation
    Then I should see a mismatched password message
