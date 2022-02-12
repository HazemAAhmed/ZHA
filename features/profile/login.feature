@tid:9009
@login
@profile
Feature: Login to my account
    login then logout to my account

    Scenario: login/logout to my account
        Given I start the chromium browser
        When I navigate to 'https://hunting.zeiss.com/'
        Then I see 'ZEISS Hunting' in the page title
        Then I click on the button 'Accept all'

        When I login to my account
        Then I see my Dashboard page

        When I logout from my account


        Then I close the browser
