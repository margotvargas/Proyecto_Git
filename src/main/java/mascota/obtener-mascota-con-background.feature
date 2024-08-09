
Feature: Obtengo Mascotas
  Background:
    Given url 'http://petstore.swagger.io/v2/'

  Scenario: Consulta de Mascota Existente
    Given path 'pet/5'
    When method get
    Then status 200

  Scenario: Consulta de Mascota Inexistente
    Given path 'pet/4'
    When method get
    Then status 404
