Given /^My blog account is "([^"]*)" and "([^"]*)"$/ do |username,password|
  account=User.new;
  account.username=username;
  account.password=password;
  account.save

end

When /^I go to the admin page$/ do
  visit '/admin'
end