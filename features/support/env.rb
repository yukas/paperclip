require 'aruba/cucumber'
require 'capybara/cucumber'
require 'test/unit/assertions'
World(Test::Unit::Assertions)

Before do
  @aruba_timeout_seconds = 120
end

if ENV['TRAVIS']
  puts "Using Travis CI configuration"
  puts "Current time is #{`date`} : #{Time.now}"
  ENV["AWS_ACCESS_KEY_ID"] = "AKIAI2Q4BG4ALE7GOTIA"
  ENV["AWS_SECRET_ACCESS_KEY"] = "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"
  ENV["PAPERCLIP_TEST_BUCKET"] = "paperclip-travis"
end
