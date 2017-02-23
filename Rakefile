def run_tests(deviceName, deviceType, platformName, platformVersion, app)
  system("deviceName=\"#{deviceName}\" deviceType=#{deviceType} platformName=\"#{platformName}\" platformVersion=\"#{platformVersion}\" app=\"#{app}\" PARALLEL_SPLIT_TEST_PROCESSES=30 parallel_split_test spec")
end

task :Galaxy_S6_Device do
  run_tests('Samsung Galaxy S6 Device', '', 'Android', '6.0', 'https://github.com/saucelabs-sample-test-frameworks/Java-Junit-Appium-Android/blob/master/resources/GuineaPigApp-debug.apk?raw=true')
end

