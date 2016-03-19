Given(/^I have product with$/) do |table|
    table.hashes.each do |row|
      Product.new(:title => row[:title],
                  :description => row[:description],
                  :price => row[:price],
                  :img_url => row[:img_url])
    end# Write code here that turns the phrase above into concrete actions
end


When(/^I go to the root page$/) do
  visit root_path # Write code here that turns the phrase above into concrete actions
end
