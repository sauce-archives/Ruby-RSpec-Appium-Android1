module Appium
  class Driver
    def appium_server_version
      driver.remote_status
    rescue Selenium::WebDriver::Error::WebDriverError => ex
      raise unless ex.message.include?('content-type=""')
      # server (TestObject for instance) does not respond to status call
      {}
    end
  end
end
