
Then(/^I select "([^"]*)" from "([^"]*)" list$/) do |recipient, recipients|
  select recipient, from: recipients
end
