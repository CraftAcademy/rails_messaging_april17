
Then(/^I select "([^"]*)" from "([^"]*)" list$/) do |recipient, recipients|
  select recipient, from: recipients
end

Given(/^the following users exists$/) do |table|
  table.hashes.each do |hash|
    User.create!(hash)
  end
end
