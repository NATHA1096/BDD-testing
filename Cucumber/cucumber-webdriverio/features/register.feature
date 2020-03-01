Feature: Register into losestudiantes
    As an user I want to register myself within losestudiantes website in order to rate teachers

Scenario Outline: Register failed with wrong inputs

    Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <nombre>, <apellido>, <correo>, <idUniversidad>, <checkbox>, <idDepartamento>, <password>, <acepta>
    And I try to register
    Then I expect to see <error>

    Examples:
      | nombre   | apellido  | correo                      |idUniversidad             |checkbox |idDepartamento |password   |acepta |error                          |
      |          |           |                             |                          |         |               |           |       |"Ingresa tu correo"            |
      | nathalia | alvarez   | testing                     |                          |         |               |           |       |"Ingresa un correo valido"     |
      | nathalia | alvarez   | prueba1exitosa@example.com  | universidad-de-los-andes |true     | 3             |           |       |"Ingresa una contraseña"       |
      | nathalia | alvarez   | prueba1exitosa@example.com  | universidad-de-los-andes |true     | 3             |12345678   |       |"Debes aceptar los términos y" |

Scenario Outline: Register successful

    Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <nombre> and <apellido> and <correo> and <idUniversidad> and <idDepartamento> and <password> and <acepta>
    And I try to register
    Then I expect to sign up

    Examples:
    | nombre   | apellido  | correo                      |idUniversidad             |idDepartamento |password   |acepta |
    | nathalia | alvarez   | prueba1exitosa@example.com  | universidad-de-los-andes | 3             |12345678   |true  |
