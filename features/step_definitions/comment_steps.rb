Given /^I have a comment with content "([^"]*)"$/ do |content|
  comment = Comment.new
  comment.content = content
  comment.save
end