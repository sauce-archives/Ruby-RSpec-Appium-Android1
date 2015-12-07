require_relative "spec_helper"

describe "Appium Test" do
  it "should test the app" do
    addContactButton = @driver.find_element(:name, "Add Contact")
    addContactButton.click()
    textFieldsList = @driver.find_elements(:class_name, "android.widget.EditText")
    textFieldsList[0].send_keys("Some Name")
    textFieldsList[2].send_keys("Some@example.com")
    @driver.find_element(:name, "Save").click()
  end
end
