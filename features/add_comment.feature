Feature: Add Comment Feature
  Scenario:  A user adds comments to the site
      Given I have a comment with title "demo"
      Then I go to the blogs page
      And I click on "demo"
      Then I should see "demo"
      Given I have a comment with content "aa"
      When I fill in Your Comment with "aa"
