Given /^I go to the sign in admin page$/ do
  visit '/admin'
end

When /^I login as "([^"]*)" with "([^"]*)"$/ do |username, password|
  :username
  :password
end

When /^I click "([^"]*)" button$/ do |Login|

end

Then /^I should not be signed in and still stay in "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should signed in and go to "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^I go to the add_blog page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I fill the title with "([^"]*)"$/ do |new_blog_title|
   :title
end

When /^I fill the content with "([^"]*)"$/ do |new_blog_content|
   :content
end

Then /^I should see "([^"]*)" and stay at "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then /^I should not see any change and stay at "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

