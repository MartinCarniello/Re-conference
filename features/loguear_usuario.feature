Feature: Como usuario, quiero poder loguearme con mi nombre de usuario y contrasenia

	Scenario: Se registra un usuario Organizador
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "Organizador"
		And ingreso "LoguearUsuarioTest" como nombre de usuario
		And ingreso "LoguearUsuarioTest@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado

	Scenario: Logueo de usuario organizador con datos correctos
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como LoguearUsuarioTest con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario LoguearUsuarioTest

	Scenario: Logueo de usuario organizador con nombre invalido
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como LoguearUsuarioTest2 con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto

	Scenario: Logueo de usuario organizador con contrasenia invalida
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como LoguearUsuarioTest con contrasenia contraseniaincorrecta
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto

	Scenario: Logueo de usuario organizador con nombre y contrasenia invalidos
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como LoguearUsuarioTest2 con contrasenia contraseniaincorrecta
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto