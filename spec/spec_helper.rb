require "rspec/expectations"
require "appium_lib"
require "rspec"
require "sauce_whisk"

RSpec.configure do | config |

  config.before(:each) do | example |

    caps = {
      caps: {
        platformVersion: "#{ENV['platformVersion']}",
        deviceName: "#{ENV['deviceName']}",
        platformName: "#{ENV['platformName']}",
        app: "#{ENV['app']}",
        deviceOrientation: 'portrait',
        name: example.full_description,
        appiumVersion: '1.4.11',
        browserName: ''
      }
    }

    @driver = Appium::Driver.new(caps)
    @driver.start_driver
  end

  config.after(:each) do | example |
    sessionid = @driver.session_id
    @driver.driver_quit
    puts "SauceOnDemandSessionID=#{sessionid} job-name=#{example.full_description}"


    if example.exception
      SauceWhisk::Jobs.fail_job sessionid
    else
      SauceWhisk::Jobs.pass_job sessionid
    end
  end

end
