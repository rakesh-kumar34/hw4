Feature: Write Articles
  As a blog administrator
  In order to better organize my blogs
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create categories successfully
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "keywords"
    And I fill in "category_permalink" with "DD"
    And I fill in "category_description" with "desc"
    And I press "Save"
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "keywords"
    Then I should see "DD"