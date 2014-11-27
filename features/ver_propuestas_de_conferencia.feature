#	Background:
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "organizador"
#		And ingreso "Organizadort" como nombre de usuario
#		And ingreso "AsignarConferenciaAEvaluadorTestOrganizador@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		And me logueo como AsignarConferenciaAEvaluadorTestOrganizador con contrasenia Password9
#		Given que me dirijo a la pagina de creacion de conferencia
#		And seteo el titulo de la conferencia "RubyConfTestVerPropuestas"
#		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
#		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
#		When clickeo el boton de crear conferencia
#		Given que me dirijo a la pagina home de la aplicacion
#		And me deslogueo
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "orador"
#		And ingreso "Orator" como nombre de usuario
#		And ingreso "orator@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Given que me dirijo a la pagina home de la aplicacion
#		And me logueo como Orator con contrasenia Password9
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestVerPropuestas
#		When clickeo el boton de agregar propuesta
#		And seteo el nombre de la propuesta "RubyConfTestVerPropuestas"
#		And seteo el resumen de la propuesta "RubyConfTestVerPropuestasResumen"
#		When clickeo crear propuesta
#		Given que me dirijo a la pagina home de la aplicacion
#		And me deslogueo
#
#	Scenario: Ver las propuestas de una conferencia
#		Given que me dirijo a la pagina home de la aplicacion
#		And me logueo como Organizadort con contrasenia Password9
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestVerPropuestas
#		Then deberia ver el listado de propuestas que incluye una propuesta con titulo RubyConfTestVerPropuestas