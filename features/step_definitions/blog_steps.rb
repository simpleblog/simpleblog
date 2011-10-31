Given /^My blog account is "([^"]*)" and "([^"]*)"$/ do |username,password|
  account = User.new;
  account.username = username;
  account.password = password;
  account.save
end

Given /^I write a blog with title "([^"]*)" and content "([^"]*)"$/ do |title, content|
  blog = Blog.new;
  blog.title = title;
  blog.content = content;
  blog.save
end

Given /^I have a blog with title "([^"]*)"$/ do |title|
  blog = Blog.new;
  blog.title = title;
  blog.save
end

When /^I input ([^"]*) with "([^"]*)"$/ do |field,value|
  fill_in_with_field_converted(field,value)
end