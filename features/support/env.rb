require "capybara"
require "capybara/cucumber"

require_relative "actions"

World (Actions)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "https://marsair.thoughtworks-labs.net"
end
