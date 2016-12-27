require "appium_lib"
require "rspec"
require "sauce_whisk"
require "require_all"

require_all "#{File.join(File.expand_path(File.dirname(__FILE__)), '..', 'pages')}"

RSpec.configure do |config|
  config.before(:each) do |example|
    build_name = "Ruby-RSpec-Android-#{ENV['TRAVIS_JOB_NUMBER']}" ||
        ENV['JENKINS_BUILD_NUMBER'] ||
        ENV['SAUCE_BAMBOO_BUILDNUMBER'] ||
        ENV['SAUCE_TC_BUILDNUMBER'] ||
        ENV['SAUCE_BUILD_NAME'] ||
        'LOCAL'

    capabilities = {
        platformVersion: ENV['platformVersion'],
        deviceName: ENV['deviceName'],
        platformName: ENV['platformName'],
        app: ENV['app'],
        deviceOrientation: ENV['portrait'],
        name: example.full_description,
        appiumVersion: ENV['appiumVersion'],
        build: build_name
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
