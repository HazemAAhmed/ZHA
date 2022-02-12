@regression
@tid:9005
@profile
Feature: User is able to read private user data in the steps
    In order to use private data inside the steps implementation,
    all data in the etc/user.data file will be mapped as user data
    to the container and can be read out from world.config.user_data
    dictionary.

    Scenario: Check user data
        Then I ensure 'USER' is 'anonymous'
        Then I ensure 'PASSWORD' is 'secret'
