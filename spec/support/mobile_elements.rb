module MobileElements
  def menu_button
    ios? ? {accessibility_id: 'Toggle navigation'} : {class: 'android.widget.Button'}
  end

  def sign_in_link
    ios? ? {accessibility_id: "Sign in"} : {xpath: "//android.view.View[@content-desc='Sign in' or @text='Sign in']"}
  end

  def sign_up_link
    if ios?
      {accessibility_id: "Sign up"}
    else
      {xpath: "//android.view.View[@content-desc='Sign up' or @text='Sign up']"}
    end
  end

  def sign_out_link
    ios? ? {accessibility_id: "Sign out"} : {xpath: "//android.view.View[@content-desc='Sign out' or @text='Sign out']"}
  end

  def signin_user
    ios? ? {xpath: "//XCUIElementTypeTextField"} : {xpath: "//android.widget.EditText[@password='false']"}
  end

  def signin_pass
    ios? ? {xpath: "//XCUIElementTypeSecureTextField"} : {xpath: "//android.widget.EditText[@password='true']"}
  end

  def signin_submit
    if ios?
      {xpath: "//XCUIElementTypeButton[@name='Sign in']"}
    else
      {xpath: "//android.widget.Button[@content-desc='Sign in' or @text='Sign in']"}
    end
  end

  def signup_user
    ios? ? {xpath: "//XCUIElementTypeTextField"} : {xpath: "//android.widget.EditText[@password='false']"}
  end

  def signup_pass
     ios? ? {xpath: "//XCUIElementTypeSecureTextField"} : {xpath: "//android.widget.EditText[@password='true']"}
  end

  def signup_submit
    if ios?
      {xpath: "//XCUIElementTypeButton[@name='Sign up']"}
    else
      {xpath: "//android.widget.Button[@content-desc='Sign up' or @text='Sign up']"}
    end
  end

  def ios?
    @platform_name == 'iOS'
  end
end
