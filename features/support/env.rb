require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://ddreviews.staging.d-i.co'
end
World(Capybara)
