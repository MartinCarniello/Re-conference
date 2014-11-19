Feature: Como usuario quiero que desde la home pueda navegar a las distintas paginas de la aplicacion

	Scenario: Crea un usuario para poder navegar las distintas paginas
		Given que me dirijo a la pagina de registro de usuario
		#And se borran los usuarios de la base de datos
		And seteo el rol "Organizador"
		And ingreso "HomeUserTest" como nombre de usuario
		And ingreso "HomeUserTest@gmail.com" como email
		And ingreso "Password9" como contrasenia
		And confirmo la contrasenia "Password9"
		When clickeo el boton de crear usuario
		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado

	Scenario: Navegar a la pagina de crear conferencia
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como HomeUserTest con contrasenia Password9
		When clickeo el boton que me lleva a crear una conferencia
		Then me redirecciona a la pagina de creacion de conferencia

	Scenario: Navegar a la pagina de ver conferencias
		Given que me dirijo a la pagina home de la aplicacion
		And me logueo como HomeUserTest con contrasenia Password9
		When clickeo el boton que me lleva a ver las conferencias
		Then me redirecciona a la pagina de ver conferencias