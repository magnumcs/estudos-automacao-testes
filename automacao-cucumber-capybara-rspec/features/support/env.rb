require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__ ) + "/ambientes/#{AMBIENTE}.yml")

Capybara.configure do |config|
    #selenium/selenium_chrome/selenium_chrome_healess
    #selenium-chrome
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5

end