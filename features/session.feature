Feature: Manage Products
    In  manage products
    As an admin
    I want to create and manage discount items

    Scenario: Login in the account
      Given have not authenticate users
      Given i visit root_path
      Given i have user
                        | email           |  password  |
                        | test@email.com  | test       |
      When i click on link "Вход"
      Then i fill in
                      | input_block       |  data           |
                      | email             |  test@email.com |
                      | password          |  test           |
      When i click button "Войти"
      Then i should see "Успешный вход"
      Then i visit root_path
      But i should see "Личный кабинет"
      Then i click "Выход"
      And i should see "Вход" and "Регистрация"
