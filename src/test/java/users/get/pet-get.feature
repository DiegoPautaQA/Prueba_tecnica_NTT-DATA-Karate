Feature: Get pet
  Scenario: Consultar mascota
    * def caracterId = 1233336
    Given url "https://petstore.swagger.io/v2/pet/" + caracterId
    When method get
    Then status 200


  Scenario: Consulta por estado
    Given url "https://petstore.swagger.io/v2/pet/findByStatus"
    When method get
    Then status 200
    And param status = 'sold'
