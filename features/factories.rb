FactoryGirl.define do
  factory :user do
    email "test@gmail.com"
    password "test"
  end

  factory :product do
    title  "Ruby"
    description "Ruby 1.9&2.0"
    price 12
    img_url "ruby.png"
    category_id 1
  end
  # This will use the User class (Admin would have been guessed)
end
