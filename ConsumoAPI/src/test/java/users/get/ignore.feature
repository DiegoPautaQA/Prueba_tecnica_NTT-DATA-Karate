@ignore

Feature: Ignore
  Scenario: Ignore scenario
    Given url "https://petstore.swagger.io" + "/#/pet/getPetById" + "1"
    When method get
    Then status 200
