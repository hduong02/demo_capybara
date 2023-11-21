Feature: Search iphone
  Scenario: As a userI should be able to search for an "iphone 14" and get matching result
    Given I visit "https://www.thegioididong.com"
    When I search for "realme"
    Then I should see search results for "realme 10"

  Scenario: As a userI should be able to search for an "iphone 14" and get matching result
    Given I visit to "https://www.thegioididong.com"
    When I search for a "realme"
    Then I click the first result
    Then I should see matching information for "Điện thoại realme 10"