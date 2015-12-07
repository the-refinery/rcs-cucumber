Feature: page_verification
  When I am in the RCS app
  Every page in the app should be a valid page
  
  Scenario: Homepage should load correctly
    Given I am on the homepage
    Then I should see title "Raven Concealment Systems"
    
  Scenario: Concealment page should load correctly
    Given I am on the homepage
    When I click link "Concealment"
    Then I should see title "Concealment"
    
  Scenario: Duty page should load correctly
    Given I am on the homepage
    When I click link "Duty"
    Then I should see title "Duty"
    
  Scenario: Blackside page should load correctly
    Given I am on the homepage
    When I click link "Blackside"
    Then I should see title "Blackside"
    
  Scenario: Custom page should load correctly
    Given I am on the homepage
    When I click link "Custom"
    Then I should see title "Custom"
    
  Scenario: Signature Line page should load correctly
    Given I am on the homepage
    When I click link "Signature Line"
    Then I should see title "Signature Line"
    
  Scenario: History page should load correctly
    Given I am on the homepage
    When I click link "History"
    Then I should see title "History"
    
  Scenario: FAQs & Instructions page should load correctly
    Given I am on the homepage
    When I click link "FAQs & Instructions"
    Then I should see title "FAQs & Instructions"
    
  Scenario: Yard Sale page should load correctly
    Given I am on the homepage
    When I click link "Yard Sale"
    Then I should see title "Yard Sale"
    
  Scenario: Doctrine page should load correctly
    Given I am on the homepage
    When I click link "Doctrine"
    Then I should see title "Doctrine"
    
  Scenario: Contact Us page should load correctly
    Given I am on the homepage
    When I click link "Contact Us"
    Then I should see title "Contact Us"