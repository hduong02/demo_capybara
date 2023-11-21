require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument("--window-size=1920,1080")

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, options: options, browser: :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css