Feature: Stations buses

    Scenario: No main screen
        Given I press "Stations"

    Scenario: See stations routes 1
        Given I press "Stations"
        When I press "TRANSMILENIO"
        Then I should see "Av. Chile"
        When I press "Av. Chile"
        Then I wait to see "Portal Sur"

    Scenario: See stations routes 2
        Given I press "Stations"
        When I press "TRANSMILENIO"
        Then I should see ""
        When I press "Alquería"
        Then I wait to see "Héroes"

    Scenario: See stations routes 3
        Given I press "Stations"
        When I press "TRANSMILENIO"
        Then I should see "21 Ángeles"
        When I press "21 Ángeles"
        Then I wait to see "Portal Suba"
