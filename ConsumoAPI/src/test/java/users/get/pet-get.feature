Feature: Get pet
  Scenario: Consult pet
    Given url "https://petstore.swagger.io" + "/#/pet/getPetById" + "1"
    When method get
    Then status 200

  Scenario: Consult by status
  * def res = {"id": 1,"category": {"id": 0,"name": "Firu"},"name": "doggie","photoUrls": ["ruta"],"tags": [{"id": 0,"name": "dog"}],"status": "sold"}
    Given url "https://petstore.swagger.io" + "/#/pet/findPetsByStatus"
    When method get
    Then status 200
    And match res contains { status: 'sold' }
