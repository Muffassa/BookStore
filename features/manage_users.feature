Feature: Manage Products
    In all project
    As an admin
    I want to manage users


    Scenario: Create new user
      Given Number of users is 0
      When I am going to "signup" page
      And I fill in users
                    | input_block | data  |
                    | user_email  | User  |
                    | user_password    | test  |
      And click "Create User" button
      Then I should have 1 user
