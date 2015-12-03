Feature: page_verification
  When I am in the RCS app
  Every page in the app should be a valid page
  
  Scenario: Homepage should load correctly
    Given I am on the homepage
    Then I should see title "Raven Concealment Systems"