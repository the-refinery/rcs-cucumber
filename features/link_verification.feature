Feature: link_verification
  When I am in the RCS app
  The links in the app should link to the right page
  
  Scenario: Social media links and classes should be aligned correctly
    Given I am on the homepage
    Then I should see the social media links
      | class             | url                                                             |
      | social--twitter   | https://twitter.com/rvnconcealment                              |
      | social--facebook  | https://www.facebook.com/Raven-Concealment-Systems-305851175686 |
      | social--instagram | https://instagram.com/explore/tags/rcsgear                      |
  
  Scenario: Concealment link should link to the right page
    Given I am on the homepage
    When I click link "Concealment"
    Then I should see title "Concealment"
  
  Scenario: Duty link should link to the right page
    Given I am on the homepage
    When I click link "Duty"
    Then I should see title "Duty"
    
  Scenario: Blackside link should link to the right page
    Given I am on the homepage
    When I click link "Blackside"
    Then I should see title "Blackside"
    
  Scenario: Custom link should link to the right page
    Given I am on the homepage
    When I click link "Custom"
    Then I should see title "Custom"
    
  Scenario: Signature Line link should link to the right page
    Given I am on the homepage
    When I click link "Signature Line"
    Then I should see title "Signature Line"
    
  Scenario: History link should link to the right page
    Given I am on the homepage
    When I click link "History"
    Then I should see title "History"
    
  Scenario: FAQs & Instructions link should link to the right page
    Given I am on the homepage
    When I click link "FAQs & Instructions"
    Then I should see title "FAQs & Instructions"
    
  Scenario: Yard Sale link should link to the right page
    Given I am on the homepage
    When I click link "Yard Sale"
    Then I should see title "Yard Sale"
    
  Scenario: Doctrine link should link to the right page
    Given I am on the homepage
    When I click link "Doctrine"
    Then I should see title "Doctrine"
    
  Scenario: Contact Us link should link to the right page
    Given I am on the homepage
    When I click link "Contact Us"
    Then I should see title "Contact Us"
    
  Scenario: Newsletter link should link to the right page
    Given I am on the homepage
    When I click link "Newsletter"
    Then I should see title "Newsletter"
    
  Scenario: Privacy Policy link should link to the right page
    Given I am on the homepage
    When I click link "Privacy Policy"
    Then I should see title "Privacy Policy"