Feature: music bin page
  As a network engineer
  In order to trouble shoot an access point
  I want to see all of the access point information
  
  Scenario: I can see the review bins
    Given I am a reviewer
    And There is a review bin called "Music Bins"
    Then I see the bin "Music Bins"