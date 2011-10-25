Feature: Login&Write Blog
  In order to check and write blog
  A visitor
  Should login with username and password  then add or see new blog

      Scenario: User login failed
      Given I go to the sign in admin page
      When I login as "wrongusername@simpleblog.com" with "wrongpassword@simapleblog.com"
      And I click "login" button
      Then I should not be signed in and still stay in "admin_page"

      Scenario: User login success
      Given I go to the sign in admin page
      When I login as "username@simpleblog.com" with "password@simapleblog.com"
      And I click "login" button
      Then I should signed in and go to "add_blog page"

      Scenario: User add new blog
      Given I go to the add_blog page
      When I fill the title with "new_blog_title"
      And I fill the content with "new_blog_content"
      And I click "submit" button
      Then I should see "new blog" and stay at "add_blog page"

      Scenario: User didn't add new blog
      Given I go to the add_blog page
      When I fill the title with "empty"
      And I fill the content with "empty"
      And I click "submit" button
      Then I should not see any change and stay at "add_blog page"











