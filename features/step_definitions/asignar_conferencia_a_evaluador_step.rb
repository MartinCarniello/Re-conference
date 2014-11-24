Given(/^me dirijo al detalle de la conferencia con titulo (.+)$/) do |titulo_conferencia|
	@browser.goto("http://localhost:3000/ver_conferencias")
	@browser.table.trs.detect { |tr| tr.td(index: 0).text eq(titulo_conferencia) }.td(index: 3).click
end

When(/^asigno la conferencia al evaluador (.+)$/) do |evaluador|
	@browser.select_list(:id, "account_evaluador").select_value(evaluador)
	@browser.button(id: "account_evaluador_boton").click
end

When(/^me dirijo a la pagina de ver asignaciones$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^deberia tener asignada la conferencia RubyConfTestAsignarConferenciaAEvaluador$/) do
  pending # express the regexp above with the code you wish you had
end
