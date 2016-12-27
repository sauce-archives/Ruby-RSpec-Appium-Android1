require "appium_lib"
require "rspec"
require "sauce_whisk"
require "require_all"

require_all "#{File.join(File.expand_path(File.dirname(__FILE__)), '..', 'pages')}"

RSpec.configure do |config|
  config.before(:each) do |example|
    capabilities = {
        platformVersion: ENV['platformVersion'],
        deviceName: ENV['deviceName'],
        platformName: ENV['platformName'],
        app: ENV['app'],
        deviceOrientation: ENV['portrait'],
        name: example.full_description,
        appiumVersion: ENV['appiumVersion'],
        build: ENV['BUILD_TAG'] || "Unknown Build"
    }
    capabilities['deviceType'] = ENV['deviceType'] if ENV['deviceType']

    @driver = Appium::Driver.new(caps)
    @driver.start_driver
  end

  config.after(:each) do |example|
    session_id = @driver.session_id
    @driver.driver_quit
    SauceWhisk::Jobs.change_status(session_id, example.exception.nil?)
  end
end
