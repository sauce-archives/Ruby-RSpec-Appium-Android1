require 'rspec/core/rake_task'

ENV['PARALLEL_SPLIT_TEST_PROCESSES'] = '10'

PLATFORMS = %w[ios_xs_sim12 ios_x_sim11 android_em6 android_goog_em7]

PLATFORMS.each do |platform|
  desc "Run tests in parallel within suite using #{platform}"
  task platform.to_s do
    ENV['PLATFORM'] = platform
    system 'parallel_split_test spec'
  end
end

task :default do
  Rake::Task[:android_goog_em7].execute
end

task default: :test_sauce


#
# For Running Sauce Demo
#

@success = true

PLATFORMS.each do |platform|
  task "#{platform}_demo" do
    ENV['PLATFORM'] = platform
    begin
      @result = system 'parallel_split_test spec'
    ensure
      @success &= @result
    end
  end
end

desc "Run multiple platforms simultaneously"
multitask sauce_demo: PLATFORMS.map { |p| "#{p}_demo" } do
  begin
    raise StandardError, "Tests failed!" unless @success
  ensure
    @success &= @result
  end
end
