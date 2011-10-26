Feature: user add blog
  Scenario:  Admin adds blog to the site
      Given I write a blog with title "steven" and content "2b"
      And I go to the add_blogs page
      When I fill in blog_title with "steven"
      And I fill in blog_content with "sb"
      And I click on "CREATE" button
      Then I should see "steven"

