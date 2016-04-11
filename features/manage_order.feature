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
      Given I have user
      When i visit root_path
      Then i click "Add to Cart" button of product with name "Ruby"
      And i should see "Для добавления товара авторизируйтесь"
      Then i click on "Вход"
      And fill in user info
      And click on "Войти"
      Then i click on "Личный кабинет"
      And i should see
                        | content   |
                        | "Ruby"    |
                        | 12        |
                        | Заказ     |

    Scenario: Delete product form my order
      Given I have user
      Given i have product
      Given i logined
      When fill in user info
      And i click "Войти"
      When i click "Личный кабинет"
      And i click "Удалить"
      Then i should not see any product
