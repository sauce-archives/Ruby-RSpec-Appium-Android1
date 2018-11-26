require "appium_lib"
require 'faker'
require_relative "support/sauce_helpers"
require_relative "support/mobile_elements"
require_relative "support/element_actions"

RSpec.configure do |config|
  config.include SauceHelpers
  config.include MobileElements
  config.include ElementActions

  config.before(:each) do |test|
    initialize_browser(test.full_description)
  end

  config.after(:each) do |example|
    submit_results(@driver.session_id, !example.exception)
    @driver.driver_quit
  end
end
