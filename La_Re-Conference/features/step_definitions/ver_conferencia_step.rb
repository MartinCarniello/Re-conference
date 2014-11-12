Given(/^que me dirijo a la pagina de ver conferencias$/) do
	@browser.goto("localhost:3000/ver_conferencias")
end

Then(/^puedo ver la conferencia que he creado$/) do
	expect(@browser.table.tr(index: 1).td.text).to match(/RubyConfTestVerConferencia/)
end
