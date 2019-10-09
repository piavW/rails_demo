Feature: Log in feature
    As a user
    in order to read articles
    I want to be able to log in to the application

    Background: Articles and user already exist
		Given following users exist
			| email          | password |
			| annna@email.se | abc12345 |
		And following article exist
			| title              | text                                               | 
			| To be or not to be | This is an article, the page is built using Rails. |
		Given I visit the "landing" page
        And I click on "Articles"
	
	Scenario: User can log in to the application [Happy Path] 
		When I fill in "Email" with "annna@email.se"
		And I fill in "Password" with "abc12345"
		And I click on "Log in"
		Then I should see "Signed in successfully."

	Scenario: User can't log in if email is omitted [Sad Path]
		When I fill in "Password" with "abc12345"
		And I click on "Log in"
		Then I should see "Invalid Email or password."

	Scenario: User can't log in if password is omitted [Sad Path]
		When I fill in "Email" with "annna@email.se"
		And I click on "Log in"
		Then I should see "Invalid Email or password."

	Scenario: User can't log in if password is wrong [Sad Path]
			When I fill in "Email" with "annna@email.se"
			And I fill in "Password" with "12345678"
			And I click on "Log in"
			Then I should see "Invalid Email or password."

		Scenario: User can't log in if email is wrong [Sad Path]
			When I fill in "Email" with "wrong@email.se"
			And I fill in "Password" with "12345678"
			And I click on "Log in"
			Then I should see "Invalid Email or password."

