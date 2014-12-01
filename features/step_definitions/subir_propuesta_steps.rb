Given(/^seteo el titulo de la propuesta "(.*?)"$/) do |titulo|
	@browser.text_field(id: "propuesta_titulo").set titulo
end

Given(/^seteo el resumen de la propuesta "(.*?)"$/) do |resumen|
	@browser.text_field(id: "propuesta_descripcion").set resumen
end

When(/^clickeo el boton de agregar propuesta$/) do
	@browser.link(id: "create_propuesta").click
end

When(/^clickeo crear propuesta$/) do
	@browser.button(id: "propuesta_crear").click
end

Then(/^deberia estar en la pagina de creacion de una propuesta$/) do
	expect(@browser.url).to match /localhost:3000\/crear_propuesta/
end

Then(/^me deberia redirijir al detalle de la conferencia donde deberia estar la propuesta creada$/) do
	expect(@browser.url).to match /localhost:3000\/crear_propuesta/
end