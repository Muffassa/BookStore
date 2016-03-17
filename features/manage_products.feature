Feature: Manage Products
    In order to make product list
    As an admin
    I want to create and manage products

    Scenario: Products List
      Given I have books titled Ruby, JavaScript
      When  I go to the list of products
      Then  I should see "Ruby"
      And   I should see "JavaScript"
