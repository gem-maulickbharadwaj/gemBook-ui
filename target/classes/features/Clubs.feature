Feature: Gembook -> Clubs

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not

  @reg @regSample
  Scenario Outline: Gembook_Clubs_isClubClickable
    Given the Clubs button exists
    Then Verify whether the Clubs btn is clickable or not
    Then Verify the Clubs button name shows as "<Club>"
    Then Verify icon exists on the button
    Examples:
      | Club  |
      | Clubs |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_ValidateHomepageOfClub
    Given User clicks on the Clubs button
    Then Verify My Clubs and All Clubs buttons are displayed
    Then Verify My Clubs screen is displayed by default
    Then Verify My Clubs Button is highlighted in "<green>" or not
    Examples:
      | green   |
      | #38a3a5 |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_ValidateAllClubs
    Given User clicks on the Clubs button
    Then Verify My Clubs and All Clubs buttons are displayed
    When User Clicks on All Clubs Button
    Then Verify All Clubs Button is highlighted in "<green>" or not
    Then Verify All Clubs page is loaded with all the Clubs
    Examples:
      | green   |
      | #38a3a5 |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_Validate<Club name>CardDetails
    Given User clicks on the Clubs button
    When User Clicks on All Clubs Button
    Then Verify the "<Club>" card is displayed with the logo
    Then Verify the "<Club>" card has the count of members enrolled
    Then Verify the "<Club>" card has the date of creation
    Then Verify the "<Club>" card is clickable
    Then Verify the "<Club>" card has the Join Club or Leave Club button
    Then Verify the "<Club>" card has the "<name>"
    Examples:
      | Club                  | name                  | Club name            |
      | Cultural Club         | Cultural Club         | CulturalClub         |
      | Entrepreneurship Club | Entrepreneurship Club | EntrepreneurshipClub |
      | CSR Club              | CSR Club              | CSRClub              |
      | Gemini-On-wheels      | Gemini-On-wheels      | Gemini-On-wheels     |
      | Sports Club           | Sports Club           | SportsClub           |
      | Technology Club       | Technology Club       | TechnologyClub       |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_ValidateJoinClubButtonFor<Club name>Card
    Given User clicks on the Clubs button
    When User Clicks on All Clubs Button
    Then Verify the "<Club>" card has the Join Club or Leave Club button
    Then Verify the Join Club button of "<Club>" card is highlighted in "<color>"
    And User clicks on Join Club button of "<Club>" card
    Then Verify the notification arises after clicking on the Join Club button
    Then Verify after clicking on Join Club button on "<Club>" card it changes to Leave group button
    Examples:
      | Club                  | color   | Club name            |
      | Cultural Club         | #38a3a5 | CulturalClub         |
      | Entrepreneurship Club | #38a3a5 | EntrepreneurshipClub |
      | CSR Club              | #38a3a5 | CSRClub              |
      | Gemini-On-wheels      | #38a3a5 | Gemini-On-wheels     |
      | Sports Club           | #38a3a5 | SportsClub           |
      | Technology Club       | #38a3a5 | TechnologyClub       |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_ValidateNavigationPathFromAllClubsTo<Club name>
    Given User clicks on the Clubs button
    When User Clicks on All Clubs Button
    Then Verify the "<Club>" card is clickable
    When User clicks on the "<Club>" card
    Then Verify the user is navigated to All Clubs > "<Club>"
    Examples:
      | Club                  | Club name            |
      | Cultural Club         | CulturalClub         |
      | Entrepreneurship Club | EntrepreneurshipClub |
      | CSR Club              | CSRClub              |
      | Gemini-On-wheels      | Gemini-On-wheels     |
      | Sports Club           | SportsClub           |
      | Technology Club       | TechnologyClub       |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_ValidateNavigationPathFromMyClubsTo<Club name>
    Given User clicks on the Clubs button
    Then Verify the "<Club>" card is clickable
    When User clicks on the "<Club>" card
    Then Verify the user is navigated to My Clubs > "<Club>"
    Examples:
      | Club                  | Club name            |
      | Cultural Club         | CulturalClub         |
      | Entrepreneurship Club | EntrepreneurshipClub |
      | CSR Club              | CSRClub              |
      | Gemini-On-wheels      | Gemini-On-wheels     |
      | Sports Club           | SportsClub           |
      | Technology Club       | TechnologyClub       |

  @reg @regSample
  Scenario Outline: Gembook_Clubs_ValidateLeaveClubFunctionalityFor<Club name>
    Given User clicks on the Clubs button
    Then Verify My Clubs screen is displayed by default
    Then Verify the "<Club>" card has the Join Club or Leave Club button
    Then Verify the Leave Club button of "<Club>" card is highlighted in "<color>"
    And User clicks on Leave Club button of "<Club>" card
    Then Verify the notification arises after clicking on the Leave Club button
    Then Verify after clicking on Leave Club button on "<Club>" card it changes to Join group button
    Examples:
      | Club                  | color   | Club name            |
      | Cultural Club         | #ec974b | CulturalClub         |
      | Entrepreneurship Club | #ec974b | EntrepreneurshipClub |
      | CSR Club              | #ec974b | CSRClub              |
      | Gemini-On-wheels      | #ec974b | Gemini-On-wheels     |
      | Sports Club           | #ec974b | SportsClub           |
      | Technology Club       | #ec974b | TechnologyClub       |



















