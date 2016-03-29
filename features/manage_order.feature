Feature: Order
    In orders
    As an admin
    I want to manage orders


    Scenario:
      Given I have categories
                  |   name          |
                  |   Back-End      |
                  |   Front-End     |
      Given I have
                  |id| title  | description    | price    | img_url    | category_id   |
                  | 1| "Ruby" | "Ruby 1.9&2.0" |    12    | "ruby.png" |  1            |
      Given user with
                        | email             |  password   |
                        | test@email.com    |   test      |
      When i visit root_path
      Then i click "Add to cart" button of product with name "Ruby"
      When i visit to user profile
      Then i should see
                        | content   |
                        | "Ruby"    |
                        | 12        |
                        | Заказ     |
