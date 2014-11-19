#Feature: Como usuario, quiero poder loguearme con mi nombre de usuario y contrasenia
#
#	Background:
#		Given que me dirijo a la pagina de registracion
#		And seteo el nombre de usuario "usuarioorganizador"
#		And seteo la contrasenia "123456"
#		And seteo el email "usuarioorganizador@gmail.com"
#		And seteo el rol "organizador"
#		When clickeo el boton de registrar usuario
		#Then me redirecciona a la pagina donde me dice que el usuario ha sido registrado como organizador
#
#	Background:
#		Given que me dirijo a la pagina de registracion
#		And seteo el nombre de usuario "usuarioevaluador"
#		And seteo la contrasenia "123456"
#		And seteo el email "usuarioevaluador@gmail.com"
#		And seteo el rol "evaluador"
#		When clickeo el boton de registrar usuario
		#Then me redirecciona a la pagina donde me dice que el usuario ha sido registrado como evaluador
#
#	Scenario: Logueo de usuario organizador con datos correctos
#		Given que me dirijo a la pagina de logueo de usuarios
#		And seteo el nombre de usuario "usuarioorganizador"
#		And seteo la contrasenia "123456"
#		When clickeo el boton de loguearse
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto
#
#	Scenario: Logueo de usuario organizador con nombre invalido
#		Given que me dirijo a la pagina de logueo de usuarios
#		And seteo el nombre de usuario "usuarioorganizador2"
#		And seteo la contrasenia "123456"
#		When clickeo el boton de loguearse
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto
#
#	Scenario: Logueo de usuario organizador con contrasenia invalida
#		Given que me dirijo a la pagina de logueo de usuarios
#		And seteo el nombre de usuario "usuarioorganizador"
#		And seteo la contrasenia "contraseniaincorrecta"
#		When clickeo el boton de loguearse
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto
#
#	Scenario: Logueo de usuario organizador con nombre y contrasenia invalidos
#		Given que me dirijo a la pagina de logueo de usuarios
#		And seteo el nombre de usuario "usuarioorganizador2"
#		And seteo la contrasenia "contraseniaincorrecta"
#		When clickeo el boton de loguearse
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto