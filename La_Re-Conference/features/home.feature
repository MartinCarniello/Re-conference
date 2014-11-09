Feature: Como usuario quiero que desde la home pueda navegar a las distintas paginas de la aplicacion

	Scenario: Navegar a la pagina de crear conferencia
		Given que me dirijo a la pagina home de la aplicacion
		When clickeo el boton Crear Conferencia
		Then me redirecciona a la pagina de creacion de conferencia