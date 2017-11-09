Feature: BBC Login

  Scenario: As a registered user I am able to login to the BBC
    Given I can access the BBC home page
    And I am able to select sign in
    When I enter my login details
    And I click sign in
    Then I have been signed in
