Feature: Como usuario organizador de la conferencia, quiero poder crear una con su titulo, descripcion y fecha

	Scenario: Se registra un usuario Organizador
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "organizador"
		And ingreso "CrearConferenciasCreadasUserTest" como nombre de usuario
		And ingreso "CrearConferenciasCreadasUserTest@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado

	Scenario: Crear conferencia con datos correctos
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como CrearConferenciasCreadasUserTest con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario CrearConferenciasCreadasUserTest
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConfTestVerConferencia"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

	Scenario: Crear conferencia sin titulo
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como CrearConferenciasCreadasUserTest con contrasenia Password9
		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario CrearConferenciasCreadasUserTest
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Then sigo en la pagina de creacion de conferencia