
Given(/^I visit the "([^"]*)" page$/) do |page|
  visit page
end

Given(/^I click on "([^"]*)" link$/) do |link|
  click_link link
end

Given(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in(field, with: content)
end

Given(/^I click on "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should expect page to have content "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end


Then(/^I should see field "([^"]*)" of type "([^"]*)"$/) do |field, type|
  expect(page).to have_selector ('input[type=' + type + ']#' + field)
end

Then(/^I should a see "([^"]*)" button$/) do |button|
  expect(page).to have_selector ('input[name=' + button + ']')
end
