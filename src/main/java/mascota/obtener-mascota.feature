# Definición de la funcionalidad que vamos a probar
Feature: Funcionalidades de Mascota PetStore

  # Escenario individual para consultar una mascota específica
  Scenario: Consulta de Mascota
    # Configuración de la URL base
    Given url "https://petstore.swagger.io/v2"
    # Configuración del path específico para la mascota con ID 2
    And path "/pet/2"
    # Método HTTP que se va a utilizar para la consulta
    When method get
    # Verificación de que el código de estado de la respuesta sea 200 (OK)
    Then status 200
    # Imprime el campo 'name' de la respuesta en la consola
    And print response.name

  Scenario Outline: Consulta de Mascota con varios Request
    Given url "https://petstore.swagger.io/v2"
    # Configuración del path específico para cada mascota usando un parámetro dinámico <idMascota>
    And path "/pet/<idMascota>"
    When method get
    Then status 200
    And print response.name
    And print response.id
    # Ejemplos de IDs de mascotas para las cuales se ejecutará el escenario
    Examples:
      | idMascota |
      | 2         |
      | 1         |
      | 3         |
