Given /^I write a blog with title "([^"]*)" and content "([^"]*)"$/ do |title, content|
  blog=Blog.new;
  blog.title=title;
  blog.content=content;
  blog.save
end

Given /^I go to the add_blogs page$/ do
visit '/admin/add_blogs'
end


#Then /^I should see new blog_title with "([^"]*)"$/ do |new_blog.title|
#  :new_blog.title
#end
#
#Then /^I should see new blog_content with "([^"]*)"$/ do |new_blog.content|
#  :new_blog.content
#end

Then /^I go to the add_blog page$/ do
visit '/admin/add_blogs'
end