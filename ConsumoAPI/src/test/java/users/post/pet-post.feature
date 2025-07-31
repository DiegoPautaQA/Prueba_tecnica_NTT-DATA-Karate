Feature: Post pet
  Scenario: Add pet
    Given url "https://petstore.swagger.io" + "/#/pet/addPet"
    And request { "id": "1", "category": {"id": 0, "name": "Kiko"}, "name": "doggie", "photoUrls": ["ruta"],"tags": [{"id": 0,"name": "dog"}],"status": "available"}
    When method post
    Then status 405
