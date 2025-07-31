Feature: Put pet
  Scenario: Update pet
    Given url "https://petstore.swagger.io/v2/pet"
    And request
    """
    {
    "id": 1233336,
    "category": {
      "id": 0,
      "name": "callejero"
    },
    "name": "Pepe",
    "photoUrls": [
      "string"
    ],
    "tags": [
      {
        "id": 1,
        "name": "bruce"
      }
    ],
    "status": "sold"
    }
    """

    When method put
    Then status 200
