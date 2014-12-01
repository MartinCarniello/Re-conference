Feature: Como usuario quiero poder ver el listado de propuestas subidas a una conferencia

	Background:
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "organizador"
		And ingreso "VerPropuestasTestOrganizador" como nombre de usuario
		And ingreso "VerPropuestasTestOrganizador@Gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		And me logueo como VerPropuestasTestOrganizador con contrasenia Password9
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConfTestVerPropuestas"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Given que me dirijo a la pagina home de la aplicacion
		And me deslogueo
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "orador"
		And ingreso "VerPropuestasTestOrador" como nombre de usuario
		And ingreso "VerPropuestasTestOrador@Gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como VerPropuestasTestOrador con contrasenia Password9
		Given que me dirijo a la pagina de ver conferencias
		And me dirijo al detalle de la conferencia con titulo RubyConfTestVerPropuestas
		When clickeo el boton de agregar propuesta
		Given seteo el titulo de la propuesta "RubyConfTestVerPropuestasPropuesta"
		And seteo el resumen de la propuesta "RubyConfTestVerPropuestasPropuestaResumen"
		When clickeo crear propuesta

	Scenario: Ver las propuestas de una conferencia
		Given que me dirijo a la pagina home de la aplicacion
		And me deslogueo
		And me logueo como VerPropuestasTestOrganizador con contrasenia Password9
		Given que me dirijo a la pagina de ver conferencias
		And me dirijo al detalle de la conferencia con titulo RubyConfTestVerPropuestas
		Then deberia ver el listado de propuestas que incluye una propuesta con titulo RubyConfTestVerPropuestasPropuesta