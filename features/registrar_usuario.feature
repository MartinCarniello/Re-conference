Feature: Como usuario quiero poder registrarme como Evaluador u Organizador con mi nombre, email y una contrasenia

	Scenario: Crear usuario exitosamente
		Given que me dirijo a la pagina de registro de usuario
		And ingreso "Andres" como nombre de usuario
		And ingreso "andres73@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado

	Scenario: Crear usuario con un campo vacio, email
		Given que me dirijo a la pagina de registro de usuario
		And ingreso "Andres" como nombre de usuario
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then sigo en la pagina de creacion de usuario

	Scenario: Crear usuario con confirmacion de contrasenia invalida
		Given que me dirijo a la pagina de registro de usuario
		And ingreso "Andres" como nombre de usuario
		And ingreso "andres73@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password91"
		When clickeo el boton de crear usuario
		Then sigo en la pagina de creacion de usuario

	Scenario: Crear usuario con contrasenia poco segura
		Given que me dirijo a la pagina de registro de usuario
		And ingreso "Andres" como nombre de usuario
		And ingreso "andres73@gmail.com" como email
		And ingreso "pass" como contrasenia
		And confirmo la contrasenia "pass"
		When clickeo el boton de crear usuario
		Then sigo en la pagina de creacion de usuario