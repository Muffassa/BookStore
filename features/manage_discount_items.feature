Feature: Manage Products
    In  manage products
    As an admin
    I want to create and manage discount items

    Scenario: Add discount item
      Given I have categories
                  |   name          |
                  |   Back-End      |
                  |   Front-End     |
      Given I have
                  |id| title  | description    | price   | img_url    | category_id   |
                  | 1| "Ruby" | "Ruby 1.9&2.0" | "12"    | "ruby.png" |  1            |
      When visit new discount products page
      Then select item with title "Ruby"
      And fill in discount_products with data "10"
      And click button "Create Discount item"
      Then i will visit discount items page
      And should see discount item with
                                          | title   |  discount   |
                                          | "Ruby"  |   10        |
