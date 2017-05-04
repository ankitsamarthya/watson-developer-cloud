require 'bundler/setup'
require 'watson/tone_analyzer'
require 'simplecov'
require 'vcr'
require 'webmock/rspec'
require 'dotenv'
require 'pry'

Dotenv.load
SimpleCov.start

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/cassettes"
  c.hook_into :webmock
  c.default_cassette_options = { :record => :once }
end
