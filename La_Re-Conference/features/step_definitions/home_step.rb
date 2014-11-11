Given(/^que me dirijo a la pagina home de la aplicacion$/) do
  @browser.goto("localhost:3000")
end

When(/^clickeo el boton Crear Conferencia$/) do
  @browser.link(id: "crear_conferencia").click
end

Then(/^me redirecciona a la pagina de creacion de conferencia$/) do
  expect(@browser.url).to match "localhost:3000/crear_conferencia"
  expect(@browser.text_field(id: "conferencia_titulo").present?).to eq true
  expect(@browser.text_field(id: "conferencia_descripcion").present?).to eq true
end