require_relative "spec_helper"

describe "Guinea Pig" do
  it "enter a comment" do
    app = GuineaPigAppPage.new @driver
    for i in 1..10 do
      sleep 20
      driver.page_source
    end
    app.textInput.send_keys("My Exceptionally Eloquent Comment")
    expect(app.textInput.text == "My Exceptionally Eloquent Comment")
  end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email addres 1" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end

  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email addres 1" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end

  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

  # it "should enter an email address" do
  #   app = GuineaPigAppPage.new @driver
  #   for i in 1..10 do
  #     sleep 20
  #     driver.page_source
  #   end
  #   app.emailTextInput.send_keys("example@email.com")
  #   expect(app.emailTextInput.text == "example@email.com")
  # end

end





