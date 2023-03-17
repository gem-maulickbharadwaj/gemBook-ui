Feature: Gembook -> News Feed -> Awards

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

#  @reg_OtherPortals @regSample @reg
#  Scenario: Gembook_Awards_VerifyPresenceOfAwardsSection
#    Given Check if Award section is present in News Feeds
#
#  @reg_OtherPortals @regSample @reg
#  Scenario Outline: Gembook_Awards_VerifyListOfDataForYear<desiredYear>
#    Given Check if Award section is present in News Feeds
#    When User selects "<desiredYear>" and "<desiredEvent>" from award section
#    Then Verify if data is present in Awards Section for "<desiredEvent>"
#    Examples:
#      | desiredYear | desiredEvent |
#      | 2019        | EOQ Q1 2019  |
#      | 2020        | EOY          |
#      | 2018        | EOQ Q4 2018  |


    @reg_OtherPortals @regSample @reg @Karan
  Scenario Outline: Gembook_Awards_ScrollThroughListOfWinnersIn<desiredYear>
    Given Check if Award section is present in News Feeds
    When User selects "<desiredYear>" and "<desiredEvent>" from award section
    Then Verify if data is present in Awards Section for "<desiredEvent>"
    Then Scroll through the list of winners in Awards section for "<desiredYear>" and "<desiredEvent>"
    Examples:
      | desiredYear | desiredEvent      |
      | 2022        | Rising Star Award |