Feature: Login feature
  As a user,
  to login or sign up
  I need a header with links

Background:
  Given I signup as "Max" with email "abc@de.f" and password "12345678"
  And I visit the "Home" page
  And I click on "Logout" link
  And I should see a link to "Login"
  And I visit the "Home" page
  Then I click on "Login" link

Scenario:
  Given I fill in field "Email" with "abc@de.f"
  And I fill in field "user_password" with "12345678"
  And I click on "Log in" button
  Then I should expect page to have content "Signed in successfully."

Scenario: Sad path - nothing filled out
  Given I fill in field "Email" with ""
  And I fill in field "Password" with ""
  And I click on "Log in" button
  Then I should expect page to have content "Invalid Email or password."

Scenario: Sad path - passwords not matching with username
  Given I fill in field "Email" with "max@max.com"
  And I fill in field "Password" with "123456789"
  And I click on "Log in" button
  Then I should expect page to have content "Invalid Email or password."

Scenario: Sad path - username not found
  Given I fill in field "Email" with "maxi@max.com"
  And I fill in field "Password" with "12345678"
  And I click on "Log in" button
  Then I should expect page to have content "Invalid Email or password."
