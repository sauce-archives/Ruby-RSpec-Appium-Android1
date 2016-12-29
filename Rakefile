require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

task default: :test_sauce

task :parallel_run do
  ENV['appiumVersion'] = '1.5.3'
  ENV['deviceOrientation'] = 'portrait'
  ENV['platformName'] = 'Android'
  ENV['app'] = 'https://github.com/saucelabs-sample-test-frameworks/GuineaPig-Sample-App/blob/master/android/GuineaPigApp-debug.apk?raw=true'

  begin
    @success = true if @success.nil?
    @result = system 'parallel_split_test spec'
  ensure
    @success &= @result
  end
end

task :test_android_emulator_5 do
  ENV['deviceName'] = 'Android Emulator'
  ENV['platformVersion'] = '5.1'

  Rake::Task[:parallel_run].execute
end

task :test_android_s4_4_4 do
  ENV['deviceName'] = 'Samsung Galaxy S4 Emulator'
  ENV['platformVersion'] = '4.4'

  Rake::Task[:parallel_run].execute
end

task :test_android_device_s6 do
  ENV['deviceName'] = 'Samsung Galaxy S6 Device'
  ENV['deviceName'] = 'Samsung Galaxy'
  ENV['platformVersion'] = '6.0'

  Rake::Task[:parallel_run].execute
end

multitask :test_sauce => [
    :test_android_emulator_5,
    # Real Device Not Implemented
    #:test_android_device_s6,
    :test_android_s4_4_4
] do
  raise StandardError, "Tests failed!" unless @success
end
