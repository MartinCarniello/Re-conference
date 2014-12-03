Given(/^me dirijo al detalle de la propuesta con titulo (.+)$/) do |titulo|
	@browser.table(id: 'tabla_propuestas').trs[1..-1].each do |tr|
		tr.td(index: 1).link.click if tr.td(index: 0).text == titulo
	end
end

When(/^seteo el comentario (.+)$/) do |comentario|
	@browser.text_field(id: 'comentario_contenido').set comentario
end

And(/^clickeo en comentar$/) do
	@browser.button(id: 'comentario_crear').click
end

Then(/^me deberia redirigir al detalle de la propuesta donde deberia estar el comentario (.+) creado$/) do |comentario|
	expect(@browser.table(id: 'tabla_comentarios').trs[1..-1].detect { |tr| tr.td(index: 1).text == comentario }).not_to eq(nil)
end