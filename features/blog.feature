Feature: Blog operation
  Scenario: Add blog without login
    When I go to the add blogs page
    Then I go to the admin page
    
  Scenario: Login and add blog
    Given My blog account is "username" and "password"
    And I go to the admin page
    And I fill in username with "username"
    And I fill in password with "password"
    And I click on "login" button
    Then I should see "Blog Link"
    When I input blog title with "allen"
    And I input blog content with "22222"
    And I click on "CREATE" button
    Then I go to the add blogs page
    And I should see "allen"
    When I click on "logout" link 
    Then I go to the admin page

  Scenario: User login fail
    Given My blog account is "username" and "password"
    When  I go to the admin page
    And I fill in username with "ab"
    And I fill in password with "ac"
    And I click on "login" button
    Then I should see "login failed"

  Scenario: A user adds comments to the site
    Given I have a blog with title "demo"
    Then I go to the blogs page
    And I click on "demo" link
    Then I should see "demo"
    When I fill in comment_content with "aa"
    And I click on "Create Comment" button
    Then I should see "aa"