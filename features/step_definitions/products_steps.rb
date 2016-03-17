Given(/^I have books titled (.+)$/) do |titles|
  titles.split(', ').each do |title|
    Product.create!(:title => title)
  end
end
