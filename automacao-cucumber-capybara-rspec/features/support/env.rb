require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #selenium/selenium_chrome/selenium_chrome_healess
    #selenium-chrome
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5

end