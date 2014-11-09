Given(/^que me dirijo a la pagina de creacion de conferencia$/) do
	@browser.goto("localhost:3000/crear_conferencia")
end

Given(/^seteo el titulo de la conferencia "(.*?)"$/) do |titulo|
	@browser.text_field(id: "conferencia_titulo").set titulo
end

Given(/^seteo la descripcion de la conferencia "(.*?)"$/) do |descripcion|
	@browser.text_field(id: "conferencia_descripcion").set descripcion
end

Given(/^seteo la fecha de la conferencia "(.*?)"$/) do |fecha|
	@browser.text_field(id: "conferencia_fecha").set fecha
end

When(/^clickeo el boton de crear conferencia$/) do
	@browser.button(id: "conferencia_crear").click
end

Then(/^me redirecciona a la pagina donde me dice que la conferencia ha sido creada$/) do
	expect(@browser.url).to match "localhost:3000"
end

Then(/^me redirecciona a la pagina de crear conferencia$/) do
	expect(@browser.url).to match "localhost:3000/crear_conferencia"
end