require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'
require "selenium-webdriver"

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

BROWSER = ENV['BROWSER']

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__ ) + "/ambientes/#{AMBIENTE}.yml")


Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  elsif BROWSER.eql?('chrome_headless')
    browser_options = Selenium::WebDriver::Chrome::Options.new(args: ['--headless', 'disabled-gpu'])
    Capybara::Selenium::Driver.new(app, :browser => :chrome, options: browser_options)
  elsif BROWSER.eql?('firefox_headless')
    browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
    Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>TRUE)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
end

Capybara.configure do |config|
    #selenium/selenium_chrome/selenium_chrome_healess
    #selenium-chrome
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5

end