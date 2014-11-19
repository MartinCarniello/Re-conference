Feature: Como usuario, quiero poder ver todas las conferencias que han sido creadas

	Scenario: Se registra un usuario Organizador, se loguea en el sistema y se crea una conferencia
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "Organizador"
		And ingreso "VerConferenciasCreadasUserTest" como nombre de usuario
		And ingreso "VerConferenciasCreadasUserTest@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado
		And me logueo como VerConferenciasCreadasUserTest con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario VerConferenciasCreadasUserTest
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConfTestVerConferencia"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

	Scenario: El usuario Organizador puede ver las conferencias creadas
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como VerConferenciasCreadasUserTest con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario VerConferenciasCreadasUserTest
		Given que me dirijo a la pagina de ver conferencias
		Then puedo ver la conferencia que he creado

	Scenario: Se registra un usuario Evaluador y se loguea en el sistema
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "Evaluador"
		And ingreso "VerConferenciasCreadasUserTest2" como nombre de usuario
		And ingreso "VerConferenciasCreadasUserTest2@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado
		And me logueo como VerConferenciasCreadasUserTest2 con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario VerConferenciasCreadasUserTest2

	Scenario: El usuario Evaluador no puede ver las conferencias creadas
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como VerConferenciasCreadasUserTest2 con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario VerConferenciasCreadasUserTest2
		Given que me dirijo a la pagina de ver conferencias
		Then no puedo ver las conferencias que se han creado