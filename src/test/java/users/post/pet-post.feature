Feature: Post pet
  Scenario: Add petStore
    Given url "https://petstore.swagger.io/v2/pet"
    And request
    """
    {
    "id": 1233336,
    "category": {
      "id": 0,
      "name": "callejero"
    },
    "name": "bruce",
    "photoUrls": [
      "string"
    ],
    "tags": [
      {
        "id": 1,
        "name": "bruce"
      }
    ],
    "status": "available"
    }
    """
    When method post
    Then status 200
