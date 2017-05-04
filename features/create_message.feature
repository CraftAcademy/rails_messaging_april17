Feature: Compose and send message
As a user,
to start a conversation,
I should be able to create a message and send a message

# Background:
# Given the following users exists
#   | name              | email                         | encrypted_password          |
#   | Mufasa            | mufasa@cia.gov                | 12345678                    |
#   | Gandoff           | gandoff@cia.gov               | 87654321                    |

Background:
  Given I signup as "mufasa" with email "mufasa@nsa.gov" and password "12345678"
  And I click on "Logout" link
  Then I click on "Sign up" link

Scenario:
  Given I signup as "dania" with email "dania@nsa.gov" and password "12345678"
  And I click on "Inbox" link
  Then I click on "Compose" link
  And I select "mufasa" from "conversation[recipients][]" list
  And I fill in field "Subject" with "Status Report"
  And I fill in field "conversation[body]" with "Agent Mufasa, please report your status report"
  And I click on "Send Message" button
  Then I should expect page to have content "Your message was successfully sent!"
