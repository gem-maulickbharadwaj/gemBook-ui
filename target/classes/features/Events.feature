Feature: Gembook -> News Feed -> Events Section

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

  @regression @reg
  Scenario: Gembook_Events_VerifyEventsPresence
    Then User checks if the Events section is present or not

  @regression @reg
  Scenario: Gembook_Events_VerifyPresenceOfNecessaryElements
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section

  @regression @reg
  Scenario: Gembook_Events_TabToggleFunctionality
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section
    Then User switch to "Ongoing & Upcoming" tab inside Events section
    And User gets the data inside the "Ongoing & Upcoming" tab of Events Section
    Then User switch to "Past" tab inside Events section
    And User gets the data inside the "Past" tab of Events Section
    And User compares the data inside tabs to verify toggle

  @regression @reg
  Scenario: Gembook_Events_ValidateTabData
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section
    Then User switch to "Ongoing & Upcoming" tab inside Events section
    And User gets the data inside the "Ongoing & Upcoming" tab and validate the data
    Then User switch to "Past" tab inside Events section
    And User gets the data inside the "Past" tab and validate the data

  @regression @reg
  Scenario Outline: Gembook_Events_ValidateEventsScrollFunctionality
    Then User checks if the Events section is present or not
    And User verifies the presence of necessary elements inside the Events section
    Then User switch to "Ongoing & Upcoming" tab inside Events section
    And Verify is user is able to scroll through the Events data inside "Ongoing & Upcoming" tab using "<method>"
    Then User switch to "Past" tab inside Events section
    And Verify is user is able to scroll through the Events data inside "Past" tab using "<method>"
    Examples:
      | method     |
      | Arrow Keys |
      | Scrollbar  |



