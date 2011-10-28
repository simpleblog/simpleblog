Feature: user add blog
  Scenario:  Admin adds blog to the site
    Given I write a blog with title "allen" and content "22222"
    And I go to the add_blogs page
    When I fill in blog_title with "allen"
    And I fill in blog_content with "22222"
    And I click on "CREATE" button
    Then I should see "steven"

