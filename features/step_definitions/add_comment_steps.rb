Given /^I have a comment with title "([^"]*)"$/ do |title|
  blog=Blog.new
  blog.title=title
  blog.save
end

Then /^I go to the blogs page$/ do
  visit '/blogs'
end

Then /^I click on "([^"]*)"$/ do |title|
  click_link(:title)
end

Then /^I should see "([^"]*)"$/ do |arg1|

end

Given /^I have a comment with content "([^"]*)"$/ do |content|
  comment=Comment.new
  comment.content=content
  comment.save
end

When /^I fill in (.*) with "([^"]*)"$/ do |content,value|
  fill_in(content,:with=>value)
end