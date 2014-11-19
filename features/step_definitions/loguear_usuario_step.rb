Given(/^que me dirijo a la pagina de registro de usuario$/) do
	@browser.goto("localhost:3000/registrar_usuario")
end

Given(/^que me dirijo a la pagina de logueo de usuario$/) do
	@browser.goto("localhost:3000")
end

Given(/^And seteo el nombre de usuario "(.*?)"$/) do |usuario|
	@user = usuario
	@browser.text_field(id: "usuario_nombre").set usuario
end

Given(/^And seteo la contrasenia "(.*?)"$/) do |password|
	@browser.text_field(id: "usuario_password").set password
end

Given(/^seteo el rol "(.*?)"$/) do |rol|
	@browser.select(id: "usuario_rol_de_usuario").set rol
end

Given(/^ingreso "(.*?)" como nombre de usuario$/) do |nombre|
	@browser.text_field(id: "usuario_nombre").set nombre
end

Given(/^ingreso "(.*?)" como email$/) do |email|
	@browser.text_field(id: "usuario_email").set email
end

Given(/^ingreso "(.*?)" como contrasenia$/) do |password|
	@browser.text_field(id: "usuario_password").set password
end

Given(/^confirmo la contrasenia "(.*?)"$/) do |confirm|
	@browser.text_field(id: "usuario_confirme_contrasenia").set confirm
end

When(/^clickeo el boton de loguearse$/) do
	@browser.button(id: "usuario_login").click
end

When(/^clickeo el boton de crear usuario$/) do
	@browser.button(id: "usuario_crear").click
end

Then(/^me redirecciona a la pagina principal donde me dice que el logueo ha sido correcto$/) do
	expect(@browser.div(class: "exito").h3.div.text).to match /^El usuario #{@user} ha sido logueado correctamente$/
end

Then(/^me redirecciona a la pagina principal donde me dice que el logueo ha sido incorrecto$/) do
	expect(@browser.div(class: "exito").h3.div.text).to match /^Nombre de usuario y/o contrasenia invalida$/
end

Then(/^me redirecciona a la pagina donde me dice que el usuario ha sido creado como organizador$/) do
	expect(@browser.div(class: "exito").h3.div.text).to match /^Usuario creado$/
end

Then(/^me redirecciona a la pagina donde me dice que el usuario ha sido creado como evaluador$/) do
	expect(@browser.div(class: "exito").h3.div.text).to match /^Usuario creado$/
end
