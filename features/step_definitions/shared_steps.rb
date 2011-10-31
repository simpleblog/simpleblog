Then /^I go to the (.*) page$/ do |page_name|
  visit path_to(page_name)
end

Then /^I click on "([^"]*)" link$/ do |title|
  click_link(:title)
end

Then /^I should see "([^"]*)"$/ do |new_content|
  if page.respond_to? :should
    page.should have_content(new_content)
  else
    assert page.has_content?(new_content)
  end
end

When /^I fill in ([^"]*) with "([^"]*)"$/ do |field,value|
  fill_in(field, :with=>value)
end

When /^I click on "([^"]*)" button$/ do |locator|
  begin
    click_on(locator)
  rescue Capybara::ElementNotFound
    # if locator isn't found in a link or button, try looking for submit buttons with value=locator
    find("input[type = 'submit'][value = '#{locator}']")
  end
end


