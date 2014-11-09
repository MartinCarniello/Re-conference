require 'spec_helper'

describe Conferencia do

	describe 'modelo' do

		before (:each) do
	    	@conferencia = Conferencia.new
	    end

		it { expect(@conferencia).to respond_to(:id) }
		it { expect(@conferencia).to respond_to(:titulo) }
		it { expect(@conferencia).to respond_to(:descripcion)}
		it { expect(@conferencia).to respond_to(:fecha) }

	end

	describe 'inicializacion' do
		it 'se puede crear pasandole un titulo, descripcion y fecha' do
			conferencia = Conferencia.new
			conferencia.titulo = "RubyConf"
			conferencia.descripcion = "Conferencia internacional de Ruby situada esta vez en Argentina"
			conferencia.fecha = Date::strptime("30-12-2014", "%d-%m-%Y")

			expect(conferencia.titulo).to eq("RubyConf")
			expect(conferencia.descripcion).to eq("Conferencia internacional de Ruby situada esta vez en Argentina")
			expect(conferencia.fecha).to eq(Date::strptime("30-12-2014", "%d-%m-%Y"))

		end
	end

end
