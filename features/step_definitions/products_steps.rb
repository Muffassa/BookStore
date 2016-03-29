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
                    :img_url => row[:img_url],
                    :category_id => row[:category_id])
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

Then(/^number of products should be (\d+)$/) do |number|
  expect(Product.all.count) == number# Write code here that turns the phrase above into concrete actions
end

When(/^follow "([^"]*)"$/) do |link|
  click_on link # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see message "([^"]*)"$/) do |message|
   expect(page).to have_content message# Write code here that turns the phrase above into concrete actions
end

Then(/^Number of products should equal (\d+)$/) do |numbers|
  expect(Product.all.count) == numbers # Write code here that turns the phrase above into concrete actions
end

When(/^i go new product page$/) do
  visit "products/new"# Write code here that turns the phrase above into concrete actions
end

Then(/^I fill in$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    fill_in row[:field], with: row[:data]
  end # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see product category with id (\d+)$/) do |id|
  category = Category.find(id)
  category_name = category.name
  expect(page).should have_content category_name # Write code here that turns the phrase above into concrete actions
end

Then(/^fill in category select "([^"]*)"$/) do |category|
    select  category, :from => 'product_category_id' # Write code here that turns the phrase above into concrete actions
end

Given(/^I have categories$/) do |table|
  table.hashes.each do |row|
    Category.create(name: row[:name])
  end
end

Then(/^I should see product category with name "([^"]*)"$/) do |name|
  expect(page).to have_content name# Write code here that turns the phrase above into concrete actions
end

When(/^push button "([^"]*)"$/) do |arg1|
   click_on "Create"# Write code here that turns the phrase above into concrete actions
end

Then(/^visit products page$/) do
  visit  products_path# Write code here that turns the phrase above into concrete actions
end

Given(/^have categories$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    Category.create(name: row[:name])
  end # Write code here that turns the phrase above into concrete actions
end
