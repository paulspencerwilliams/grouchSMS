ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment",__FILE__)
require 'rspec/rails'
require "capybara/rspec"

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
=begin
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

config.mock_with :rspec do |mocks|

    mocks.syntax = :expect

    mocks.verify_partial_doubles = true
  end
=end
end
