# require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

# #require 'simplecov'
# require 'simplecov'
# SimpleCov.start do
#   root(File.join(File.dirname(__FILE__), '..','..'))
#   coverage_dir 'reports/coverage'
#   add_filter '/spec/'
#   add_filter '/features/'
#   add_filter '/admin/'
#   add_filter '/db/'
#   add_filter '/config/'
#   add_group "Models", "app/models"
#   add_group "Controllers", "app/controllers"
#   add_group "Helpers", "app/helpers"
# end

# DataMapper::Logger.new($stdout, :all)
# DataMapper.auto_migrate!

# organizador = Usuario.create(nombre: 'UsuarioOrganizador',
#                    email: 'UsuarioOrganizador@Gmail.com', 
#                    password: "Password1",
#                    rol: "Organizador")

# evaluador = Usuario.create(nombre: 'UsuarioEvaluador',
#                    email: 'UsuarioEvaluador@Gmail.com', 
#                    password: "Password1",
#                    rol: "Evaluador")

# organizador.save

# evaluador.save

require_relative 'dependencies'

headless = Headless.new
headless.start

Before do |scenario|
	if ENV['PADRINO_ENV'] == "travis"
		@browser = Watir::Browser.new
	else
		@browser = Watir::Browser.new :chrome
	end
end

at_exit do
	headless.destroy
end