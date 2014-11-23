Feature: Como Orador quiero poder subir una propuesta

	Background:
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "Organizador"
		And ingreso "SubirPropuestaTestOrganizador" como nombre de usuario
		And ingreso "SubirPropuestaTestOrganizador@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		And me logueo como SubirPropuestaTestOrganizador con contrasenia Password9
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConfTestSubirPropuesta"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Given que me dirijo a la pagina home de la aplicacion
		And me deslogueo
		Given que me dirijo a la pagina de registro de usuario
		And seteo el rol "Orador"
		And ingreso "SubirPropuestaTestOrador" como nombre de usuario
		And ingreso "SubirPropuestaTestOrador@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario

	Scenario: Subir propuesta a una conferencia
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como SubirPropuestaTestOrador con contrasenia Password9
		Given que me dirijo a la pagina de ver conferencias
		And me dirijo al detalle de la conferencia con titulo RubyConfTestSubirPropuesta
		And clickeo el boton de agregar propuesta
		And seteo el nombre de la propuesta "RubyConfTestSubirPropuestaPropuesta1"
		When clickeo crear propuesta
		Then me deberia redirijir al detalle de la conferencia donde deberia estar la propuesta creada