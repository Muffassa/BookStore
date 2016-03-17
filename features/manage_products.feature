Feature: Manage Products
    In order to make product list
    As an admin
    I want to create and manage products

    Scenario: Products List
      Given I have books titled Ruby, JavaScript
      When  I go to the list of products
      Then I should see "List of Products"
      And  I should see "Ruby"
      And   I should see "JavaScript"

    Scenario: Add new item
      Given I have no books
      And I am on the list of products
      When I follow "New Product"
      And I fill in "Title" with "Ruby"
      And I fill in "Description" with "Best ruby on rails book"
      And I fill in "Price" with "12"
      And I fill in "Image_Url" with "ruby.png"
      And I should click submit button
      Then I should see "New product created"
      And I should see "Ruby"
      And I should see "Best ruby on rails book"
      And I should see "12"
      And I should see "ruby.png"
      And I should have 1 article
