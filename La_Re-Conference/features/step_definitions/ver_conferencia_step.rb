Given(/^que me dirijo a la pagina de ver conferencias$/) do
	@browser.goto("localhost:3000/ver_conferencias")
end

Then(/^puedo ver la conferencia que he creado$/) do
	# expect(@browser.table.tr(index: 0).td.text).to eq (/RubyConf/)
	expect(@browser.ul.li(index: 0).text).to match(/RubyConf/)
end
