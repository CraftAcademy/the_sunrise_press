Feature: User can log in and out
    As a registered user
    In order to access more unique functions on the website
    I would like to be able to log in and log out

    Background: 
        Given the following user exists
        | email          | password | password_confirmation |
        | bill@email.com | password | password              |
        And I visit the landing page
        And I click 'Login'

    Scenario: If user fills in the login form correctly he can log in
        When I fill in 'Email' field with 'bill@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Login'
        Then I should see 'Signed in successfully.'

    Scenario: If user fills in the login form incorrectly he will see an error message
        When I click 'Login'
        Then I should see 'Invalid Email or password.'
    
    Scenario: User can log out when logged in
        Given I am logged in as 'bill@email.com'
        When I click 'Logout'
        Then I should not see 'Hello, bill@email.com'