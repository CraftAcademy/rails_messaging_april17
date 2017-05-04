Feature: Sign up Feature
  As a user,
  To sign up for an account,
  I need a form to fill my information

Background:
  Given I visit the "welcome/index" page
  And I click on "Sign up" link
  And I fill in field "user_name" with "John"
  And I fill in field "user_email" with "abc@de.f"
  And I fill in field "user_password" with "12345678"
  And I fill in field "user_password_confirmation" with "12345678"

Scenario:
  Then I should see field "user_name" of type "text"
  And I should see field "user_email" of type "email"
  And I should see field "user_password" of type "password"
  And I should see field "user_password_confirmation" of type "password"
  And I should a see "commit" button
  Given I click on "Create" button
  Then I should expect page to have content "Welcome! You have signed up successfully."
  And I should expect page to have content "Hello, John"

Scenario: Sad path - nothing filled out
  Given I fill in field "user_name" with ""
  And I fill in field "user_email" with ""
  And I fill in field "user_password" with ""
  And I fill in field "user_password_confirmation" with ""
  Given I click on "Create" button
  Then I should expect page to have content "3 errors prohibited this user from being saved:"


Scenario: Sad path - passwords not matching
  Given I fill in field "user_password_confirmation" with "111111111"
  And I click on "Create" button
  Then I should expect page to have content "Password confirmation doesn't match Password"

Scenario: Sad path - no user name provided
  Given I fill in field "user_name" with ""
  And I click on "Create" button
  Then I should expect page to have content "Name can't be blank"
