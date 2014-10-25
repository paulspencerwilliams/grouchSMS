Feature: as a consumer, I want to be able query for users wanting weather updates

  Scenario: A combination of users want, don't want and have locations set
    Given the following users exist
      | email         | password | password_confirmation | weather | latitude | longitude | phone   | 
      | 1@example.com | password | password              | true    | 53.479   | -2.247    | 1234567 |
      | 2@example.com | password | password              | false   | 53.479   | -2.247    | 2345678 |
      | 3@example.com | password | password              | false   |          |           | 3456789 |
    When I send a GET request for "/users/wanting_weather"
    Then should get the following user details
      | email         | weather | latitude | longitude | phone   | 
      | 1@example.com | true    | 53.479   | -2.247    | 1234567 |
