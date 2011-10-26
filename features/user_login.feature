Feature:  User login
  Scenario:  User login success
    Given My blog account is "username" and "password"
    When  I go to the admin page
    And I fill in username with "username"
    And I fill in password with "password"
    And I click on "login" button
    Then I should see "Blog Link"

  Scenario:  User login fail
    Given My blog account is "username" and "password"
    When  I go to the admin page
    And I fill in username with "ab"
    And I fill in password with "ac"
    And I click on "login" button
    Then I should see "login failed"










