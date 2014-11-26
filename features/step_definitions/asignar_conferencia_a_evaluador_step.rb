Given(/^me dirijo al detalle de la conferencia con titulo (.+)$/) do |titulo_conferencia|
	@browser.goto("http://localhost:3000/ver_conferencias")
	@browser.table.trs[1..-1].detect { |tr| tr.td(index: 0).text == titulo_conferencia }.td(index: 3).click
end

When(/^asigno la conferencia al evaluador (.+)$/) do |evaluador|
	if @browser.div(id: "backtrace").present?
		msg = @browser.div(id: "rack").table.tr(index: 41).td(class: "code").div.text
		@browser.select_list(id: "#{msg}").select_value(evaluador)
	end

	@browser.select_list(id: "account_evaluador").select_value(evaluador)
	@browser.button(id: "account_evaluador_boton").click
end

Then(/^deberia tener asignada la conferencia (.+) al evaluador (.+)$/) do |conferencia, evaluador|
	expect(@browser.table(id: "tabla_evaluadores").trs[1].td(index: 0).text).to eq(evaluador)
end
