When(/^visit new discount products page$/) do
  visit  new_discount_item_path# Write code here that turns the phrase above into concrete actions
end

Then(/^select item with title "([^"]*)"$/) do |product|
  select product, from: "discount_item[product_id]" # Write code here that turns the phrase above into concrete actions
end

Then(/^fill in discount_products with data "([^"]*)"$/) do |data|
  fill_in "discount_item[discount]", with: data # Write code here that turns the phrase above into concrete actions
end

Then(/^click button "([^"]*)"$/) do |button|
  click_on button # Write code here that turns the phrase above into concrete actions
end

Then(/^i will visit discount items page$/) do
  visit discount_items_path # Write code here that turns the phrase above into concrete actions
end

Then(/^should see discount item with$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    expect(page).to have_content row[:title]
    expect(page).to have_content row[:discount]
  end # Write code here that turns the phrase above into concrete actions
end
