Given(/^que me dirijo a la pagina de creacion de conferencia$/) do
	@browser.goto("localhost:3000/crear_conferencia")
end

Given(/^seteo el titulo de la conferencia "(.*?)"$/) do |titulo|
	@browser.text_field(id: "titulo_conferencia").set titulo
end

Given(/^seteo la descripcion de la conferencia "(.*?)"$/) do |descripcion|
	pending
	#@browser.input_text(id: "descripcion_conferencia").set descripcion
end

Given(/^seteo la fecha de la conferencia "(.*?)"$/) do |decha|
	pending
	#@browser.input_text(id: "fecha_conferencia").set fecha
end

When(/^clickeo el boton de crear conferencia$/) do
	pending
	#@browser.button(id: "crear_conferencia").click
end

Then(/^me redirecciona a la pagina donde me dice que la conferencia ha sido creada$/) do
	pending
	#@browser.span(id: )
end
