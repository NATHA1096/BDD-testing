Feature: Register into losestudiantes
    As an user I want to register myself within losestudiantes website in order to rate teachers

Scenario Outline: Register failed with wrong inputs

    Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <nombre>, <apellido>, <correo>, <idUniversidad>, <checkbox>, <idDepartamento>, <idPrograma>, <password>, <acepta>
    And I try to register
    Then I expect to see <error>

    Examples:
      | nombre   | apellido  | correo                      |idUniversidad                     |checkbox |idDepartamento |idPrograma |password   |acepta |error                              |
      |          |           |                             |                                  |         |               |           |           |       |"Ingresa tu correo"                |
      | nathalia | alvarez   | testing                     |                                  |         |               |           |           |       |"Ingresa un correo valido"         |
      | nathalia | alvarez   | prueba1exitosa@example.com  | universidad-de-los-andes         |         |               |           |           |       |"Ingresa una contraseña"           |
      | nathalia | alvarez   | prueba1exitosa@example.com  | universidad-de-los-andes         |true     |               |15         |12345      |       |"La contraseña debe ser al menos"  |
      | nathalia | alvarez   | prueba1exitosa@example.com  | universidad-de-los-andes         |true     |               |15         |12345678   |       |"Debes aceptar los términos y"     |
      | nathalia | alvarez   | prueba1exitosa@example.com  | pontificia-universidad-javeriana |         |403            |           |           |       |"Ingresa una contraseña"           |    

Scenario Outline: Register successful

    Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <nombre>, <apellido>, <correo>, <idUniversidad>, <checkbox>, <idDepartamento>, <idPrograma>, <password>, <acepta>
    And I try to register
    Then I expect to sign up

    Examples:
    | nombre   | apellido  | correo                      |idUniversidad                     |checkbox |idDepartamento |idPrograma               |password   |acepta |
    | nathalia | alvarez   | prueba4exitosa@example.com  | Universidad de los Andes         |true     |               |Maestría en Arquitectura |12345678   |true   |
    | nathalia | alvarez   | prueba5exitosa@example.com  | Pontificia Universidad Javeriana |         |Dpto Biología  |                         |12345678   |true   |   
      