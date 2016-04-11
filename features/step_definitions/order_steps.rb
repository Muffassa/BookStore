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
