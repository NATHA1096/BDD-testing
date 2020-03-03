Feature: Find routes

  Scenario: No home screen
    Given I press "Routes"


  Scenario: Find routes in TRANSMILENIO
    Given I wait to see "HOME"
    When I press "Routes"
    And I press "TRANSMILENIO"
    And I click on screen 70% from the left and 10% from the top
    Then I enter text "Portal sur" into field with id "search_src_text"
    And I press the enter button
    Then I should see "Flores"
 Scenario: Find routes in URBANO
    Given I wait to see "HOME"
    When I press "Routes"
    And I press "URBANO"
    And I click on screen 70% from the left and 10% from the top
    Then I enter text "Marly" into field with id "search_src_text"
    And I press the enter button
    Then I should see "Brasil"
 Scenario: Find routes in COMPLEMENTARIO
    Given I wait to see "HOME"
    When I press "Routes"
    And I press "COMPLEMENTARIO"
    And I click on screen 70% from the left and 10% from the top
    Then I enter text "Prado" into field with id "search_src_text"
    And I press the enter button
    Then I should see "Colina"

    
