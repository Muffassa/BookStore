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

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I should click submit button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have (\d+) article$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
