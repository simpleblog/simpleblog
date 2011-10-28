Feature: user add blog
  Scenario: Add blog without login
    When I go to the add_blogs page
    Then I go to the admin page
    
  Scenario: Login and add blog
    Given I write a blog with title "allen" and content "22222"
    And I go to the add_blogs page
    And My blog account is "username" and "password"
    When  I go to the admin page
    And I fill in username with "username"
    And I fill in password with "password"
    And I click on "login" button
    Then I should see "Blog Link"
    When I fill in blog_title with "allen"
    And I fill in blog_content with "22222"
    And I click on "CREATE" button
    Then I go to the add_blogs page
    And I should see "allen"
    Given I have a comment with title "allen"
    And I click on "allen" link
    Then I should see "allen"





    When I click on "logout" link 
    Then I go to the admin page

  Scenario:  User login fail
    Given My blog account is "username" and "password"
    When  I go to the admin page
    And I fill in username with "ab"
    And I fill in password with "ac"
    And I click on "login" button
    Then I should see "login failed"
