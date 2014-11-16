Given(/^que me dirijo a la pagina de creacion de conferencia$/) do
	@browser.goto("localhost:3000/crear_conferencia")
end

Given(/^seteo el titulo de la conferencia "(.*?)"$/) do |titulo|
	@browser.text_field(id: "conferencia_titulo").set titulo
end

Given(/^seteo la descripcion de la conferencia "(.*?)"$/) do |descripcion|
	@browser.text_field(id: "conferencia_descripcion").set descripcion
end

Given(/^seteo el dia (\d+), mes (\d+) y año (\d+) de la conferencia$/) do |dia, mes, anio|
	@browser.input(id: "conferencia_fecha").click
	@browser.send_keys(dia.to_i)
	@browser.send_keys(mes.to_i)
	@browser.send_keys(anio.to_i)
end

When(/^clickeo el boton de crear conferencia$/) do
	@browser.button(id: "conferencia_crear").click
end

Then(/^me redirecciona a la pagina donde me dice que la conferencia ha sido creada$/) do
	expect(@browser.div(class: "exito").h3.div.text).to match /^Conferencia creada$/
end

Then(/^sigo en la pagina de creacion de conferencia$/) do
	expect(@browser.url).to match /localhost:3000\/crear_conferencia$/
end