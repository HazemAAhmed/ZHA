@tid:9004
@regression
Feature: Navigate in the browser
    In order to test web applications
    I need to be able to navigate around in the browser.

    Scenario: open github.com
        Given I start the chromium browser
        When I navigate to 'http://www.github.com'
        Then I see 'GitHub' in the page title
        Then I close the browser

    Scenario: open radish on github.com
        Given I start the chromium browser
        When I navigate to 'https://github.com/radish-bdd/radish'
        Then I see 'radish-bdd' in the page title
        Then I close the browser
