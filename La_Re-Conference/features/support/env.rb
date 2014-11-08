require_relative 'dependencies'

headless = Headless.new
headless.start

Before do |scenario|
	@browser = Watir::Browser.new :chrome
end

at_exit do
	headless.destroy
end