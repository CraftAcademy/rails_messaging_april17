
Then(/^I select "([^"]*)" from "([^"]*)" list$/) do |recipient, recipients|
  select recipient, from: recipients
end

Given(/^the following users exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end
