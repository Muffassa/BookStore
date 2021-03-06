Given(/^I have product with$/) do |table|
    table.hashes.each do |row|
      Product.create!(:title => row[:title],
                  :description => row[:description],
                  :price => row[:price].to_i,
                  :img_url => row[:img_url])
    end# Write code here that turns the phrase above into concrete actions
end


When(/^I go to the root page$/) do
  visit root_path # Write code here that turns the phrase above into concrete actions
end

When(/^I should see$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.hashes.each do |row|
    expect(page).to have_content(row[:title])
    expect(page).to have_content(row[:description])
    expect(page).to have_content(row[:price])
    expect(page).to have_css("img[src*='#{row[:img_url]}']")
  end # Write code here that turns the phrase above into concrete actions
end

Given(/^I visit "([^"]*)" page$/) do |page|
  visit  page# Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)"$/) do |link|
  click_on link # Write code here that turns the phrase above into concrete actions
end
