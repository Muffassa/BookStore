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
  expect(page).to have_content content
end

Then(/^i should not see "([^"]*)" and "([^"]*)"$/) do |content1, content2|
  expect(page).to has_no_text?  content1
  expect(page).to has_no_text? content2
end


Then(/^i click "([^"]*)"$/) do |link|
  save_and_open_page
  click_on link # Write code here that turns the phrase above into concrete actions
end

Then(/^i should see "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_content arg1
  expect(page).to have_content arg2 # Write code here that turns the phrase above into concrete actions
end

Given(/^have not authenticate users$/) do
  @current_user = nil # Write code here that turns the phrase above into concrete actions
end


Given(/^user at main page$/) do
  visit root_path
end

Given(/^have user$/) do |table|
  # table is a table.hashes.keys # => [:email, :password]
  table.hashes.each do |row|
    User.create(email: row[:email], password: row[:password])
  end
end

When(/^he click "([^"]*)"$/) do |link|
  click_on link
end

And(/^login in the site with$/) do |table|
  # table is a table.hashes.keys # => [:email, :password]
  table.hashes.each do |row|
    fill_in "email", with: row[:email]
    fill_in "password", with: row[:password]
  end
  click_on "Войти"
end

Then(/^he should see message "([^"]*)"$/) do |message|
  expect(page).to have_content message
end