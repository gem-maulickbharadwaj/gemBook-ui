Feature: Gembook -> News Feed -> Events Section

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

  @reg
  Scenario: Gembook_birthday_loadDetails
    Given User checks the presence of gembook logo
    Then Birthday section is visible
    Then Click on any entry under birthday section
    Then Check the URL is correct or not
    And Validate all fields are loaded successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_birthday_dateRange
    Given User checks the presence of gembook logo
    Then Birthday section is visible
    Then Check birthday date of first entry
    Then Check the date of last entry
    Then Validate the date range of first entry and last entry inside birthday section
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_workAnniversary_loadDetails
    Given User checks the presence of gembook logo
    Then Work anniversary section is visible
    Then Click on any entry under work anniversary section
    Then Check the URL is correct or not
    And Validate all fields are loaded successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_workAnniversary_dateRange
    When User checks the presence of gembook logo
    Then Work anniversary section is visible
    Then Check work anniversary date of first entry
    Then Check the joining date of last entry
    Then Validate the date range of first entry and last entry inside anniversary section
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_newMembers_loadDetails
    When User checks the presence of gembook logo
    Then New members section is visible
    Then Click on any entry under new members section
    And Validate all fields are loaded successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByAchievement
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByAnnouncement
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type announcements
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByQuestions
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type questions
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByGeneric
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type generic
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByIdeas
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type ideas
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByFindings
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type findings
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_filterByAll
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on filter icon
    Then Click on filter type all
    Then Validates entries are filtered properly for applied filter
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_changePostTypeToAchievement
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on post type and select the achievement filter
    Then Validates achievement filter is applied successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_changePostTypeToAnnouncement
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on post type and select the announcement filter
    Then Validates announcement filter is applied successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_changePostTypeToQuestion
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on post type and select the question filter
    Then Validates question filter is applied successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_changePostTypeToGeneric
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on post type and select the generic filter
    Then Validates generic filter is applied successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_changePostTypeToIdeas
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on post type and select the ideas filter
    Then Validates ideas filter is applied successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

  @reg
  Scenario: Gembook_PostCreationAndfiltering_changePostTypeToFindings
    When User checks the presence of gembook logo
    Then Check the presence of filter icon
    Then Click on post type and select the findings filter
    Then Validates findings filter is applied successfully
    When User logs out from the Gembook application
    Then Validate if user is logged out from the application

