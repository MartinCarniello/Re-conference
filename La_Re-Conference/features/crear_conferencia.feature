Feature: Como usuario organizador de la conferencia, quiero poder crear una con su titulo, descripcion y fecha

	Scenario: Crear conferencia con datos correctos
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConf"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo la fecha de la conferencia "28-12-2014"
		When clickeo el boton de crear conferencia
		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

	Scenario: Crear conferencia con datos incorrectos
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConf"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		When clickeo el boton de crear conferencia
		Then me redirecciona a la pagina de crear conferencia