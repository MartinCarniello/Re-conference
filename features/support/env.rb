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