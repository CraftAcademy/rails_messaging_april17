When(/^I visit root_path$/) do
  visit root_path
end

Then(/^I should see a link to "([^"]*)"$/) do |link|
  find_link(link).visible?
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link('Login')
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in('arg1', with: 'arg2')
end

def page_path(page_name)
  case page_name
  when 'Home' then
    root_path
  when 'Sign up' then
    new_user_registration_path
  else
    raise "#{page_name} page path is not defined"
  end
end

Given(/^I visit the "([^"]*)" page$/) do |page_name|
  visit page_path(page_name)
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
