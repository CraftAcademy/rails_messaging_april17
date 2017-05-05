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
