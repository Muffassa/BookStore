Given(/^user with$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    User.create(email: row[:email], password: row[:password])
  end # Write code here that turns the phrase above into concrete actions
end

When(/^i visit root_path$/) do
  visit root_path # Write code here that turns the phrase above into concrete actions
end

Then(/^i click "([^"]*)" button of product with name "([^"]*)"$/) do |button, product|
    click_on button# Write code here that turns the phrase above into concrete actions
end

When(/^i visit to user profile$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^i should see$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end
