Feature: login
  When I'm on the login page
  I should be able to log in
  
  Scenario: I can log in
    Given I am on the login page
    And I type "test.user.1@decisiondesk.com" into the email text box
    And I type "0123456aA!" into the password text box
    Then I should successfully log in