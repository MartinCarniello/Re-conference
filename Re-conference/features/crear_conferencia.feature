Feature: Como usuario organizador de la conferencia, quiero poder crear una con su titulo, descripcion y fecha

	Scenario: Crear conferencia con datos correctos
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConfCrearConferencia1"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y año 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

	Scenario: Crear conferencia sin titulo
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y año 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Then sigo en la pagina de creacion de conferencia