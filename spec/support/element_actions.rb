module ElementActions
  def wait_for(locator)
    @wait ||= Selenium::WebDriver::Wait.new(timeout: 240)
    @wait.until { @element = locate(locator) }
    @element
  end

  def send_keys(locator, text)
    element = locate(locator)
    element.click
    element.send_keys text
  end

  def click(locator)
    locate(locator).click
  end

  def locate(locator)
    @driver.find_element(locator)
  end
end
