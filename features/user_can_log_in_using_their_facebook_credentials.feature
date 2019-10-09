Feature: User can log in using their facebook credentials
  As a user
  In order to simplify the sign up/sign in process
  I would like to be able to authenticate myself using Facebook

  Scenario: Visitor click on 'Login with Facebook' and gets authenticated
    Given I visit the "landing" page
    When I click on 'Login with Facebook'
    Then I should be on the home page
    And I should see 'Successfully authenticated from Facebook account'