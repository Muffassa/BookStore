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

Then(/^i click on "([^"]*)"$/) do |link|
  click_on link # Write code here that turns the phrase above into concrete actions
end

Then(/^fill in$/) do |table|
  table.hashes.each do |row|
    fill_in row[:input_block], with: row[:data]
  end
end

Then(/^click on "([^"]*)"$/) do |button|
  click_on button# Write code here that turns the phrase above into concrete actions
end

Then(/^i should see$/) do |table|
  save_and_open_page
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    expect(page).to have_content row[:contrent]
  end # Write code here that turns the phrase above into concrete actions
end

Then(/^i should be redirected to user panel$/) do
    assert_response :redirect  # Write code here that turns the phrase above into concrete actions
end

Given(/^i have product$/) do
  create(:product) # Write code here that turns the phrase above into concrete actions
end

When(/^i visit user panel$/) do
  visit user_path # Write code here that turns the phrase above into concrete actions
end

Given(/^I have user$/) do
  user = create(:user)
  current_user = User.create(email: user.email, password: user.password)
  current_user.order = Order.new
  # Write code here that turns the phrase above into concrete actions
end

Given(/^i logined$/) do
  user = create(:user)
  visit root_path
  click_on "Вход"
  # Write code here that turns the phrase above into concrete actions
end

Then(/^i should not see any product$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


And(/^fill in user info$/) do
  user = create(:user)
  fill_in "email", with: user.email
  fill_in "password", with: user.password
end