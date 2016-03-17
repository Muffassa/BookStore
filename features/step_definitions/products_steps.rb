Given(/^I have books titled (.+)$/) do |titles|
  titles.split(', ').each do |title|
    Product.create!(:title => title)
  end
end

When(/^I go to the list of products$/) do
   visit products_path# Write code here that turns the phrase above into concrete actions
end
