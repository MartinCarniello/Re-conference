Feature: Como usuario, quiero poder ver todas las conferencias que han sido creadas

	Background:
		Given que me dirijo a la pagina de creacion de conferencia
		And seteo el titulo de la conferencia "RubyConf"
		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
		And seteo el dia 30, mes 12 y año 2014 de la conferencia
		When clickeo el boton de crear conferencia
		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

	Scenario: Ver conferencias creadas
		Given que me dirijo a la pagina de ver conferencias
		Then puedo ver la conferencia que he creado