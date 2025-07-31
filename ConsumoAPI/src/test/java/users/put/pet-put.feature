Feature: Put pet
  Scenario: Update pet
    Given url "https://petstore.swagger.io" + "/#/pet/updatePet" + "1"
    And request {"id": 1,"category": {"id": 0,"name": "Firu"},"name": "doggie","photoUrls": ["ruta"],"tags": [{"id": 0,"name": "dog"}],"status": "sold"}
    When method put
    Then status 405
