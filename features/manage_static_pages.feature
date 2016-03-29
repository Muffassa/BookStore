Feature: Manage Products
    In static pages
    As an admin
    I want to manage pages

    Scenario: I should see list of products at root page
    Given I have categories
                    |   name          |
                    |   Back-End      |
                    |   Front-End     |
    Given I have
                              |title       |description           |price|img_url    |  category_id   |
                              |"Ruby"      |"Ruby 1.9&2.0 book"   |12   |"ruby.png" |   1            |
                              |"JavaScript"|"JavaScript best book"| 24  |"js.png"   |   2            |
    When I go to the root page
    And I should see
                              |title       |description           |price| img_url    |
                              |"Ruby"      |"Ruby 1.9&2.0 book"   |12   | "ruby.png" |
                              |"JavaScript"|"JavaScript best book"|24   | "js.png"   |

    Scenario: I should have "Registration" link
      Given I visit "/" page
      When I click "Регистрация"
      Then I should see "New User"
