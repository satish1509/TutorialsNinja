Feature: Login functionality

  Scenario: Login with valid credentials
    Given User navigates to login page
    When User enteres valid email address "satishkumar@ramanasoft.com" into the email field
    And User enteres valid password "Satti@0915" into the password field
    And User clicks on login button
    Then User should get successfully logged in

  Scenario: Login with invalid credentials
    Given User navigates to login page
    When User enteres invalid email address "satish.kotturu425@gmail.com" into the email field
    And User enteres invalid password "1234567" into the password field
    And User clicks on login button
    Then User should get a proper warning message about credentials mismatch

  Scenario: Login with valid email and invalid password
    Given User navigates to login page
    When User enteres valid email address "satishkumar@ramanasoft.com" into the email field
    And User enteres invalid password "1234567" into the password field
    And User clicks on login button
    Then User should get a proper warning message about credentials mismatch

  Scenario: Login with invalid email and valid password
    Given User navigates to login page
    When User enteres invalid email address "satish.kotturu425@gmail.com" into the email field
    And User enteres valid password "Satti@0915" into the password field
    And User clicks on login button
    Then User should get a proper warning message about credentials mismatch

  Scenario: Login without providing any credentials
    Given User navigates to login page
    When User dont enters email address into the email field
    And User dont enters password into the password field
    And User clicks on login button
    Then User should get a proper warning message about credentials mismatch
