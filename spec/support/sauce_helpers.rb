require 'sauce_whisk'

module SauceHelpers
  def initialize_browser(name)
    opt = {name: name,
           build: build_name,
           username: ENV['SAUCE_USERNAME'],
           accessKey: ENV['SAUCE_ACCESS_KEY']}

    opt.merge! YAML.safe_load(IO.read('spec/support/platforms.yml'))[platform]

    @driver = Appium::Driver.new(caps: opt)
    @driver.start_driver
    @driver.no_wait

    @platform_name = opt['platformName']
  end

  def submit_results(session_id, result)
    SauceWhisk::Jobs.change_status(session_id, result)
    return if result
    puts @driver.get_source
  end

  def platform
    ENV['PLATFORM'] || 'android_goog_em7'
  end

  def build_name
    %w[SAUCE_BAMBOO_BUILDNUMBER CIRCLE_BUILD_NUM BUILD_TAG TRAVIS_BUILD_NUMBER"].each do |var|
      return ENV[var] if ENV.key?(var)
    end
    #"Unknown Build - #{Time.now.to_i}"
    "Full Sauce Demo 8"
  end
end
