require 'spec_helper'
require_relative '../../../app/models/usuario.rb'

describe 'usuario' do

	describe 'pass_segura?' do
		it 'debe dar True siempre' do
			
			usuario = Usuario.new

			usuario.pass_segura?  == True
		end
	end

	describe 'validate_password' do
		it 'debe dar True solo si su password es mas larga que 8 caracteres, tiene al menos una mayuscula y una minuscula' do
			
			usuario = Usuario.new
			usuario.password = 'Qqwe789asd'
			usuario.validate_password  == True
		end

		it 'debe dar False si y su password es mas corta que 8 caracteres' do
			
			usuario = Usuario.new
			usuario.password = 'Qqwe78'
			usuario.validate_password  == Falso
		end

		it 'debe dar False si y su password no contiene mayusculas' do
			
			usuario = Usuario.new
			usuario.password = 'qwe78qwe7'
			usuario.validate_password  == Falso
		end

		it 'debe dar False si y su password no contiene minusculas' do
			
			usuario = Usuario.new
			usuario.password = 'QWE798QWE7'
			usuario.validate_password  == Falso
		end
	end
end
