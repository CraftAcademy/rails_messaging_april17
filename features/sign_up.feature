Feature: Sign up Feature
  As a user,
  To sign up for an account,
  I need a form to fill my information


Scenario:
  Given I visit the "welcome/index" page
  And I click on "Sign up" link
  Then I should see field "user_name" of type "text"
  And I should see field "user_email" of type "email"
  And I should see field "user_password" of type "password"
  And I should see field "user_password_confirmation" of type "password"
  And I should a see "commit" button
