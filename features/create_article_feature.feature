Feature: 
As a publisher
In order to add relevant content to my news service
I would like to be able to create articles
Here is a starting feature file for the create functionality.

Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:	
    Given following users exist
			| email          | password |
			| annna@email.se | abc12345 |
		Given I visit the "landing" page
    And I click on "Articles"
    And I fill in "Email" with "annna@email.se"
    And I fill in "Password" with "abc12345"
		And I click on "Log in"
		Then I should see "Signed in successfully."
    Given I visit the "landing" page
    And I click on "Article"
    And I click on "New Article"

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Text" with "Excited about learning a new framework"
    And I click on "Create Article"
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Text" with "Excited about learning a new framework"
    And I click on "Create Article"
    Then I should see "Title can't be blank"

Scenario: Publisher doesn't input text content for the article [Sad Path]
  When I fill in "Title" with "Here is my Title"
  And I click on "Create Article"
  Then I should see "Text can't be blank"