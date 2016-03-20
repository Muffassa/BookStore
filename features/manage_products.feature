Feature: Manage Products
    In order to make product list
    As an admin
    I want to create and manage products

    Scenario: Products List
    Given I have
                |id| title  | description    | price   | img_url    |
                | 1| "Ruby" | "Ruby 1.9&2.0" | "12"    | "ruby.png" |
      When  I go to the list of products
      Then I should see "List of Products"
      And  I should see "Ruby"

    Scenario: Add new item
      Given I have no books
      And I am on the list of products
      When I follow "New Product"
      And I fill in "product_title" with "Java"
      And I fill in "product_description" with "Best ruby on rails book"
      And I fill in "product_price" with "12"
      And I fill in "product_img_url" with "ruby.png"
      And I should click "Create" button
      Then I should see "Новая книга добавлена"
      And I should have 1 product
      When  I go to the list of products
      And I should see "Java"
      And I should see "Best ruby on rails book"
      And I should see "12"
      And I should see img "ruby.png"

    Scenario: Edit product
      Given I have
                  |id| title  | description    | price   | img_url    |
                  | 1| "Ruby" | "Ruby 1.9&2.0" | "12"    | "ruby.png" |
      When I go to the list of products
      When I follow "Edit"
      Then I fill
                  | field               | data                  |
                  | product[title]      | Java                  |
                  | product_description | Java popular language |
                  | product_price       | 23                    |
                  | product[img_url]    | java.png              |
      And I should click "Update" button
      Then I should see "Данные обновленны"
      When I go to the list of products
      Then I should see
                        | title | description           | price | img_url     |
                        | Java  | Java popular language | 23    | java.png    |

      Scenario: Delete product
        Given I have
                    |id| title| description  | price | img_url  |
                    | 1| Ruby | Ruby 1.9&2.0 | 12    | ruby.png |
        And I have 1 product
        When I go to the list of products
        When I follow "Delete"
        Then number of products should be 0

      Scenario: Validation title of product
        Given I have no books
        Given I have 0 product
        When I go to the list of products
        And follow "New Product"
        Then I fill
                    | field               | data                  |
                    | product[title]      |                       |
                    | product_description | Java popular language |
                    | product_price       | 23                    |
                    | product[img_url]    | java.png              |
        And I should click "Create" button
        Then I should see message "Введенные данные не корректны"
