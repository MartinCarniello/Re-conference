Feature: Como Organizador quiero poder asignarle una de mis conferencias a un Evaluador

	Background:
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "organizador"
		And ingreso "AsignarConferenciaAEvaluadorTestOrganizador" como nombre de usuario
		And ingreso "AsignarConferenciaAEvaluadorTestOrganizador@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		And me logueo como AsignarConferenciaAEvaluadorTestOrganizador con contrasenia Password9
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConfTestAsignarConferenciaAEvaluador"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Given que me dirijo a la pagina home de la aplicacion
		And me deslogueo
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "evaluador"
		And ingreso "AsignarConferenciaAEvaluadorTestEvaluador" como nombre de usuario
		And ingreso "AsignarConferenciaAEvaluadorTestEvaluador@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario

	Scenario: Asignar conferencia a evaluador
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como AsignarConferenciaAEvaluadorTestOrganizador con contrasenia Password9
		And me dirijo al detalle de la conferencia con titulo RubyConfTestAsignarConferenciaAEvaluador
		When asigno la conferencia al evaluador AsignarConferenciaAEvaluadorTestEvaluador
		Then deberia tener asignada la conferencia RubyConfTestAsignarConferenciaAEvaluador al evaluador AsignarConferenciaAEvaluadorTestEvaluador