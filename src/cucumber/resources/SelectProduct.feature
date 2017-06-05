Feature: Select Product

  Scenario: Selecting chips with no money inserted displays the price and then insert coin after a second
    Given A Vending Machine is running
    When I select the purchase chips button
    Then the display shows "$0.65"
    And the display eventually shows "INSERT COIN" within 2 second

  Scenario: Selecting cola with enough money inserted will output the cola
    Given A Vending Machine is running
    And I insert 4 Quarters into the vending machine
    When I select the purchase cola button
    Then "Cola" are dispensed from the vending machine
    And the display shows "THANK YOU"
    And the display eventually shows "INSERT COIN" within 2 second

  Scenario: Selecting chips with enough money inserted will output the chips
    Given A Vending Machine is running
    And I insert 4 Quarters into the vending machine
    When I select the purchase chips button
    Then "Chips" are dispensed from the vending machine
    And the display shows "THANK YOU"
    And the display eventually shows "INSERT COIN" within 2 second

  Scenario: Selecting candy with enough money inserted will output the cola
    Given A Vending Machine is running
    And I insert 4 Quarters into the vending machine
    When I select the purchase candy button
    Then "Candy" are dispensed from the vending machine
    And the display shows "THANK YOU"
    And the display eventually shows "INSERT COIN" within 2 second

