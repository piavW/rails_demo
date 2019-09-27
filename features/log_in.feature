Feature: Log in feature
As a user
in order to read articles
I want to be able to log in to the application

    Background: Articles and user already exist
		Given following users exist
			| name    | email         | password |
			| Sverrir | hress@gaur.is | abcd1234 |
		And the following article exists
			| title              | text                                               | 
			| To be or not to be | This is an article, the page is built using Rails. |
		And I visit the landing page

	Scenario: User can log in to the application
		When I click on "Log In"
		And I click on "Articles"
		Then I should see "To be or not to be"