Feature: Manage Products
    In static pages
    As an admin
    I want to manage pages

    Scenario: I should see list of products at root page
    Given I have product with
                              |title       |description           |price|img_url    |
                              |"Ruby"      |"Ruby 1.9&2.0 book"   |"12" |"ruby.png" |
                              |"JavaScript"|"JavaScript best book"|"24" |"js.png"   |
    When I go to the root page
    And I should see
                              |title       |description           |price|img_url    |
                              |"Ruby"      |"Ruby 1.9&2.0 book"   |"12" |"ruby.png" |
                              |"JavaScript"|"JavaScript best book"|"24" |"js.png"   |

                      
