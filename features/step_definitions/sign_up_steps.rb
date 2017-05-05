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

Then(/^I should see field "([^"]*)" of type "([^"]*)"$/) do |field, type|
  expect(page).to have_selector ('input[type=' + type + ']#' + field)
end

Then(/^I should a see "([^"]*)" button$/) do |button|
  expect(page).to have_selector ('input[name=' + button + ']')
end

Given(/^I signup as "([^"]*)" with email "([^"]*)" and password "([^"]*)"$/) do |name, email, password|
  steps %{
    Given I visit the "Sign up" page
    And I fill in field "user_name" with "#{name}"
    And I fill in field "user_email" with "#{email}"
    And I fill in field "user_password" with "#{password}"
    And I fill in field "user_password_confirmation" with "#{password}"
    And I click on "Create" button
  }
end
