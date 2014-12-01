Then(/^deberia ver el listado de propuestas que incluye una propuesta con titulo (.+)$/) do |titulo|
	expect(@browser.table(id: "tabla_propuestas").trs[1].td(index: 0).text).to eq(titulo)
end