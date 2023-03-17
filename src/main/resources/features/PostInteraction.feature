Feature: Gembook -> News Feed -> Post Interaction

  Background: User Login into the Gembook Application
    When User clicks on signIn Button
    Then User enters the "username"
    Then User enters the "password"
    And User logins into the application
    Then Verify user is logged into the application or not
    When User navigates to tab "News Feeds"

  @regression @reg
  Scenario: Gembook_PostInteraction_VerifyPostsPresence
    Then User checks the presence of posts on the News Feeds page

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidatePresenceOfNecessaryElementsInsidePosts
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateLikeAndUnlikeFunctionality
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Like Button" of the post
    Then User verifies if the "Like Count" "increases" or not
    When User hits the "Like Button" of the post
    Then User verifies if the "Like Count" "decreases" or not

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateLikeAndUnlikeCommentFunctionality
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Like Comment Button" of the post
    Then User verifies if the "Likes on Comment" "increases" or not
    When User hits the "Like Comment Button" of the post
    Then User verifies if the "Likes on Comment" "decreases" or not

  @regression @reg
  Scenario Outline: Gembook_PostInteraction_ValidateToggleFunctionalityBetweenDifferentPostsTypes
    Then User checks the presence of posts on the News Feeds page
    And User checks if post filter dropdown is present or not
    When User expands the post filtering dropdown
    Then User verifies if dropdown expands or not and selects a "<Post Type>"
    And User verifies if the post type updated to the selected "<Post Type>" in dropdown
    And User verifies the updated posts appear according to the selected "<Post Type>"
    Examples:
      | Post Type     |
      | Achievements  |
      | Announcements |
      | Questions     |
      | Generic       |
      | Ideas         |
      | Findings      |

  @regression @reg
  Scenario: Gembook_PostInteraction_VerifyCommentBoxPresence
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateViewMoreAndViewLessCommentsFunctionality
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    Then User hits the "View More Comments" button
    And User checks if the visible comments "increases" on hitting "View More Comments" button
    Then User hits the "View Less Comments" button
    And User checks if the visible comments "decreases" on hitting "View Less Comments" button

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateCommentPostingAndDeletionFunctionality
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    Then User types the "Good Content" comment in the comment box
    When User hits the "Send Comment Button" of the post
    Then User verifies if the "Comment Count" "increases" or not
    When User hits the "Delete Comment Button" of the post
    Then User verifies if the "Comment Count" "decreases" or not

  @regression @reg
  Scenario:Gembook_PostInteraction_VerifyProfileOfCommenter
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Commenter Username" of the post
    Then Check if the profile of the clicked user opens up or not

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidatePresenceOfEmojiDialogueBox
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Emoji Button" of the post
    Then Verify if the emoji dialogue box appears or not

  @regression @reg
  Scenario Outline: Gembook_PostInteraction_ValidateTogglingBetweenDifferentEmojiCategories
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User hits the "Emoji Button" of the post
    Then Verify if the emoji dialogue box appears or not
    Then Verify if user is able to toggle between "<Emoji Categories>"
    Examples:
      | Emoji Categories |
      | smileys_people   |
      | animals_nature   |
      | food_drink       |
      | travel_places    |
      | activities       |
      | objects          |
      | symbols          |
      | flags            |

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateLikeDialogueBoxAppearance
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hover over the "Like Count" icon
    Then User checks if the dialogue box with users who like the post appears or not

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateTheProfileOfPersonWhoLikesThePost
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hover over the "Like Count" icon
    Then User checks if the dialogue box with users who like the post appears or not
    When User hits the "Like User Profile" of the post
    Then Check if the profile of the clicked user opens up or not

  @regression @reg @rahul
  Scenario: Gembook_PostInteraction_ValidateTheProfileOfPostOwner
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Profile Name" of the post
    Then Check if the profile of the clicked user opens up or not

  @regression @reg
  Scenario: Gembook_PostInteraction_ValidateUserIsAbleToPasteTheTextInCommentSection
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Comment Button" of the post
    Then Verify if the comment box shows up or not
    When User copies the text from a "src/main/resources/Data.txt"
    Then User paste the text inside the comment box
    And Verifies if the data is pasted inside the comment box or not

  @regression @reg
  Scenario: Gembook_PostInteraction_MultipleImageToggleFunctionalityInsidePost
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Image Right Arrow Button" of the post
    Then Verify if the other image comes in the view or not

  @regression @reg @rahul
  Scenario: Gembook_PostInteraction_ExpandImageOnClickInsidePost
    Then User checks the presence of posts on the News Feeds page
    And User verifies the presence of necessary elements of the posts
    When User hits the "Active Image" of the post
    Then Verify if the image gets expanded when user clicks on the image
