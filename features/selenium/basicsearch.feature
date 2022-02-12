@tid:9002
@regression
@search
Feature: Search for data
    Search for data

    Scenario: search for huhu
        Given I start the chromium browser
        When I navigate to 'http://www.duckduckgo.com'
        Then I see 'DuckDuckGo' in the page title

        When I search for 'python.org'
        Then I follow the link 'Welcome to Python.org'
        Then I see 'Welcome to Python.org' in the page title

        Then I close the browser
