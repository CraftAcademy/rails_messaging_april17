
Given(/^I visit the "([^"]*)" page$/) do |page|
  visit page
end

Given(/^I click on "([^"]*)" link$/) do |link|
  click_link link
end

Then(/^I should see field "([^"]*)" of type "([^"]*)"$/) do |field, type|
  page.should have_selector ('input[type=' + type + ']#' + field)
end

Then(/^I should a see "([^"]*)" button$/) do |button|
  page.should have_selector ('input[name=' + button + ']')
end
