#Feature: Como usuario quiero poder dejar un comentario en una propuesta

#	Scenario: Se registra un evaluador
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "evaluador"
#		And ingreso "ComentariosEvaluadorTest" como nombre de usuario
#		And ingreso "ComentariosEvaluadorTest@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado

#	Scenario: Se registra un usuario Organizador, se loguea en el sistema y se crea una conferencia
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "organizador"
#		And ingreso "ComentariosOrganizadorTest" como nombre de usuario
#		And ingreso "ComentariosOrganizadorTest@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado
#		And me logueo como ComentariosOrganizadorTest con contrasenia Password9
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario ComentariosOrganizadorTest
#		Given que me dirijo a la pagina de creacion de conferencia
#		And seteo el titulo de la conferencia "RubyConfTestComentarios"
#		And seteo la descripcion de la conferencia "Conferencia internacional de Ruby situada esta vez en Argentina"
#		And seteo el dia 30, mes 12 y anio 2014 de la conferencia
#		When clickeo el boton de crear conferencia
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestComentarios
#		When asigno la conferencia al evaluador ComentariosEvaluadorTest
#		Then me redirecciona a la pagina donde me dice que la conferencia ha sido creada

#	Scenario: Se registra un usuario orador, se loguea en el sistema y se crea una propuesta
#		Given que me dirijo a la pagina de registro de usuario
#		And seteo el rol "orador"
#		And ingreso "ComentariosOradorTest" como nombre de usuario
#		And ingreso "ComentariosOradorTest@gmail.com" como email
#		And ingreso "Password9" como contrasenia
#		And confirmo la contrasenia "Password9"
#		When clickeo el boton de crear usuario
#		Then me redirecciona a la pagina donde me dice que el usuario ha sido creado
#		And me logueo como ComentariosOradorTest con contrasenia Password9
#		Then me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario ComentariosOradorTest
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestComentarios
#		When clickeo el boton de agregar propuesta
#		Then deberia estar en la pagina de creacion de una propuesta
#		And seteo el nombre de la propuesta "RubyConfTestComentariosPropuesta1"
#		And seteo el resumen de la propuesta "RubyConfTestComentariosPropuesta1Resumen"
#		When clickeo crear propuesta
#		Then me deberia redirigir al detalle de la conferencia donde deberia estar la propuesta creada

#	Scenario: El evaluador deja un comentario
#		Given que me dirijo a la pagina home de la aplicacion
#		And me logueo como ComentariosEvaluadorTest con contrasenia Password9
#		Given que me dirijo a la pagina de ver conferencias
#		And me dirijo al detalle de la conferencia con titulo RubyConfTestComentarios
#		And me dirijo al detalle de la propuesta con titulo RubyConfTestComentariosPropuesta1
#		When seteo el comentario Comentario1TestComentarios
#		Then me deberia redirigir al detalle de la propuesta donde deberia decir que el comentario ha sido creado