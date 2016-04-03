Given(/^i have user$/) do |table|
  table.hashes.each do |row|
    User.create(email: row[:email], password: row[:password])
  end
end

When(/^i click on link "([^"]*)"$/) do |link|
  click_on link # Write code here that turns the phrase above into concrete actions
end

Then(/^i fill in$/) do |table|
  table.hashes.each do |row|
    fill_in row[:input_block], with: row[:data]
  end
end

When(/^i click button "([^"]*)"$/) do |button|
  click_on  button
end

Then(/^i should see "([^"]*)"$/) do |content|
  expect(page).should have_content content
end

Then(/^i visit root_path$/) do
  visit root_path # Write code here that turns the phrase above into concrete actions
end

Then(/^i should not see "([^"]*)" and "([^"]*)"$/) do |content1, content2|
  expect(page).should_not have_content  content1
  expect(page).should_not have_content content2# Write code here that turns the phrase above into concrete actions
end
