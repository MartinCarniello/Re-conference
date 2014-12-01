#Feature: Como Evaluador, quiero poder evaluar una propuesta

#	Scenario: Se registra un evaluador
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "evaluador"
#		And ingreso "EvaluarPropuestaEvaluadorTest" como nombre de usuario
#		And ingreso "EvaluarPropuestaEvaluadorTest@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado

#	Scenario: Se registra un usuario Organizador, se loguea en el sistema y se crea una conferencia
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "organizador"
#		And ingreso "EvaluarPropuestaOrganizadorTest" como nombre de usuario
#		And ingreso "EvaluarPropuestaOrganizadorTest@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado
#		And me logueo como EvaluarPropuestaOrganizadorTest con contrasenia Password9
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario EvaluarPropuestaOrganizadorTest
#		Given que me dirijo a la pagina de creacion de conferencia
#		And seteo el titulo de la conferencia "RubyConfTestEvaluarPropuesta"
#		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
#		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
#		When clickeo el boton de crear conferencia
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestEvaluarPropuesta
#		When asigno la conferencia al evaluador EvaluarPropuestaEvaluadorTest
#		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

#	Scenario: Se registra un usuario orador, se loguea en el sistema y se crea una propuesta
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "orador"
#		And ingreso "EvaluarPropuestaOradorTest" como nombre de usuario
#		And ingreso "EvaluarPropuestaOradorTest@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado
#		And me logueo como EvaluarPropuestaOradorTest con contrasenia Password9
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario EvaluarPropuestaOradorTest
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestEvaluarPropuesta
#		When clickeo el boton de agregar propuesta
#		Then deberia estar en la pagina de creacion de una propuesta
#		And seteo el nombre de la propuesta "RubyConfTestEvaluarPropuestaPropuesta1"
#		And seteo el resumen de la propuesta "RubyConfTestEvaluarPropuestaPropuesta1Resumen"
#		When clickeo crear propuesta
#		Then me deberia redirigir al detalle de la conferencia donde deberia estar la propuesta creada

#	Scenario: El evaluador aprueba la propuesta
#		Given que me dirijo a la pagina home de la aplicacion
#		And me logueo como EvaluarPropuestaEvaluadorTest con contrasenia Password9
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestEvaluarPropuesta
#		And me dirijo al detalle de la propuesta con titulo PropuestaNuevaTestEvaluarPropuesta
#		When la califico como Aprobado
#		Then deberia redireccionarme al detalle de la propuesta, donde me dice que ha sido aprobada

#	Scenario: El evaluador rechaza la propuesta
#		Given que me dirijo a la pagina home de la aplicacion
#		And me logueo como EvaluarPropuestaEvaluadorTest con contrasenia Password9
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestEvaluarPropuesta
#		And me dirijo al detalle de la propuesta con titulo PropuestaNuevaTestEvaluarPropuesta
#		When la califico como Desaprobado
#		Then deberia redireccionarme al detalle de la propuesta, donde me dice que ha sido desaprobada