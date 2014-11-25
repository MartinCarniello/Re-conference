require 'spec_helper'
require_relative '../../../app/models/account.rb'

describe 'account' do

	describe 'pass_segura?' do
		it 'debe dar True siempre' do
			
			usuario = Account.new

			expect(usuario.pass_segura?).to eq(true)
		end
	end

	describe 'validate_password' do
		it 'debe dar True solo si su password es mas larga que 8 caracteres, tiene al menos una mayuscula y una minuscula' do
			expect(Account.validate_password('Qqwe789asd')).to eq(true)
		end

		it 'debe dar False si y su password es mas corta que 8 caracteres' do
			expect(Account.validate_password('Qqwe78')).to eq(false)
		end

		it 'debe dar False si y su password no contiene mayusculas' do
			expect(Account.validate_password('qwe78qwe7')).not_to eq(true)
		end

		it 'debe dar False si y su password no contiene minusculas' do
			expect(Account.validate_password('QWE798QWE7')).not_to eq(true)
		end
	end
end
