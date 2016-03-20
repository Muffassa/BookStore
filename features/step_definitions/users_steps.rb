Given(/^Number of users is (\d+)$/) do |number|
  expect(User.all.count) == number # Write code here that turns the phrase above into concrete actions
end

When(/^I am going to "([^"]*)" page$/) do |link|
  visit link # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    fill_in row[:input_block], with: row[:data]
  end # Write code here that turns the phrase above into concrete actions
end

When(/^click "([^"]*)" button$/) do |button|
  click_on button # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have (\d+) user$/) do |number|
  expect(User.all.count) == 0 # Write code here that turns the phrase above into concrete actions
end
