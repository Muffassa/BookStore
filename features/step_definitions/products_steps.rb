Given(/^I have books titled (.+)$/) do |titles|
  titles.split(', ').each do |title|
    Product.create!(:title => title)
  end
end

When(/^I go to the list of products$/) do
   visit products_path# Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "(.+)"$/) do |title|
    expect(page).to  have_content(title)# Write code here that turns the phrase above into concrete actions
end

Given(/^I have no books$/) do
  Product.delete_all # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on the list of products$/) do
  visit products_path # Write code here that turns the phrase above into concrete actions
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link) # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, data|
   fill_in field , :with => data# Write code here that turns the phrase above into concrete actions
end

When(/^I should click "([^"]*)" button$/) do |button|
    click_on button# Write code here that turns the phrase above into concrete actions
end

Then(/^I should have (\d+) product$/) do |number|
  expect(Product.all.count) == number# Write code here that turns the phrase above into concrete actions
end

Given(/^I have$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    Product.create!(:id => row[:id],
                    :title => row[:title],
                    :description => row[:description],
                    :price => row[:price],
                    :img_url => row[:img_url])
  end# Write code here that turns the phrase above into concrete actions
end

Then(/^I fill$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    fill_in row[:field], :with => row[:data]
  end # Write code here that turns the phrase above into concrete actions
end

When(/^I should see img "([^"]*)"$/) do |img|
  expect(page).to have_css("img[src*='#{img}']") # Write code here that turns the phrase above into concrete actions
end

Given(/^I have (\d+) product$/) do |number|
   expect(Product.all.count) == number# Write code here that turns the phrase above into concrete actions
end

Then(/^I should have message "([^"]*)"$/) do |message|
  expect(page).to have_content message# Write code here that turns the phrase above into concrete actions
end

Then(/^If i click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^number of products should be (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
