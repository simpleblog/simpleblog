Given /^I have a comment with title "([^"]*)"$/ do |title|
  blog=Blog.new;
  blog.title=title;
  blog.save
end

Then /^I go to the (.*) page$/ do |page_name|
  visit path_to(page_name)
end

Then /^I click on "([^"]*)" link$/ do |title|
  click_link(:title)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  if page.respond_to? :should
    page.should have_content(arg1)
  else
    assert page.has_content?(arg1)
  end
end


Given /^I have a comment with content "([^"]*)"$/ do |content|
  comment=Comment.new
  comment.content=content
  comment.save
end

When /^I fill in ([^"]*) with "([^"]*)"$/ do |arg1,value|
  fill_in(arg1,:with=>value)
end

When /^I click on "([^"]*)" button$/ do |locator|
  begin
    click_on(locator)
  rescue Capybara::ElementNotFound
    # if locator isn't found in a link or button, try looking for submit buttons with value=locator
    find("input[type='submit'][value='#{locator}']")
  end
end

Given /^I write a blog with title "([^"]*)" and content "([^"]*)"$/ do |title, content|
  blog=Blog.new;
  blog.title=title;
  blog.content=content;
  blog.save
end

Given /^My blog account is "([^"]*)" and "([^"]*)"$/ do |username,password|
  account=User.new;
  account.username=username;
  account.password=password;
  account.save
end

Given /^I want to update "([^"]*)"$/ do |title|
  new_blog=Blog.new
  new_blog.title=title
  new_blog.save
end
