require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

task default: :test_sauce

task :parallel_run do
  system 'parallel_rspec spec'
end

task :Andoid_Emulator_Phone_5_1 do
  ENV['deviceName'] = 'Android Emulator'
  ENV['deviceType'] = 'Phone'
  ENV['platformName'] = 'Android'
  ENV['platformVersion'] = '5.1'
  ENV['app'] = 'https://github.com/saucelabs-sample-test-frameworks/Java-Junit-Appium-Android/blob/master/resources/GuineaPigApp-debug.apk?raw=true'

  Rake::Task[:parallel_run].execute
end

task :Andoid_Emulator_Tablet_5_1 do
  ENV['deviceName'] = 'Android Emulator'
  ENV['deviceType'] = 'Tablet'
  ENV['platformName'] = 'Android'
  ENV['platformVersion'] = '5.1'
  ENV['app'] = 'https://github.com/saucelabs-sample-test-frameworks/Java-Junit-Appium-Android/blob/master/resources/GuineaPigApp-debug.apk?raw=true'

  Rake::Task[:parallel_run].execute
end

task :Galaxy_S4_Emulator do
  ENV['deviceName'] = 'Samsung Galaxy S4 Emulator'
  ENV['platformName'] = 'Android'
  ENV['platformVersion'] = '4.4'
  ENV['app'] = 'https://github.com/saucelabs-sample-test-frameworks/Java-Junit-Appium-Android/blob/master/resources/GuineaPigApp-debug.apk?raw=true'

  Rake::Task[:parallel_run].execute
end

task :Galaxy_S5_Device do
  ENV['deviceName'] = 'Samsung Galaxy S5 Device'
  ENV['platformName'] = 'Android'
  ENV['platformVersion'] = '4.4'
  ENV['app'] = 'https://github.com/saucelabs-sample-test-frameworks/Java-Junit-Appium-Android/blob/master/resources/GuineaPigApp-debug.apk?raw=true'

  Rake::Task[:parallel_run].execute
end

multitask :test_sauce => [
    :Andoid_Emulator_Phone_5_1,
    :Galaxy_S4_Emulator,
    :Andoid_Emulator_Tablet_5_1,
    :Galaxy_S5_Device
] do
  puts 'Running automation'
end
