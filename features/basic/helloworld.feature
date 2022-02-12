@regression
@tid:9001
Feature: Say Hello, World
    In order to test web interfaces
    I need to be able to say hello, world
    to test my software.

    Scenario: Say Hello, World
        Given nothing
        When I say 'Hello, World'
        Then I expect nothing
