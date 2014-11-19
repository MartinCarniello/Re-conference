Given(/^que me dirijo a la pagina de ver conferencias$/) do
	@browser.goto("localhost:3000/ver_conferencias")
end

Then(/^puedo ver la conferencia que he creado$/) do
	expect(@browser.table.tr(index: 1).td.text).to match(/RubyConfTestVerConferencia/)
end

Then(/^no puedo ver las conferencias que se han creado$/) do
	expect(@browser.table.trs.size).to eq(1)
end