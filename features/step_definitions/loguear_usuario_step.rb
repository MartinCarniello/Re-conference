And(/^me logueo como (.+) con contrasenia (.+)$/) do |usuario, contrasenia|
	@browser.text_field(id: "usuario_nombre").set usuario
	@browser.text_field(id: "usuario_password").set contrasenia
	@browser.button(id: "usuario_login").click
end

And(/^me deslogueo$/) do
	@browser.link(id: "usuario_logout").click
end

Then(/^me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto para el usuario (.+)$/) do |usuario|
	expect(@browser.div(class: "exito").h3.div.text).to match /El usuario #{usuario} ha sido logueado correctamente/
end

Then(/^me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto$/) do
	expect(@browser.div(class: "error").h3.div.text).to match /^Nombre de usuario y\/o contrasenia invalida$/
end