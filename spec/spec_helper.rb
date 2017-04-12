require "rspec/expectations"
require "appium_lib"
require "rspec"
require "sauce_whisk"
require "selenium-webdriver"
require "require_all"

require_rel "../pages"

# TODO - remove extension with this code is merged:
# https://github.com/appium/ruby_lib/pull/538
require_rel "../extensions"

Selenium::WebDriver.logger.level = :info

RSpec.configure do |config|

  config.before(:each) do |example|
    caps = {
        testobject_api_key: ENV['TESTOBJECT_API_KEY'],
        testobject_device: 'LG_Nexus_4_E960_real',
        testobject_test_name: example.full_description
    }

    appium_lib = {server_url: 'http://appium.testobject.com/wd/hub'}

    @driver = Appium::Driver.new(caps: caps, appium_lib: appium_lib)

    @driver.start_driver
    @sessionid = @driver.session_id
  end

  config.after(:each) do |example|
    @driver.driver_quit

    # TODO: use Test Object reporting
    if example.exception
    #  Report test failed
    else
    #  Report test passed
    end

  end

end
