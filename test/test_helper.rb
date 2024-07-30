# test/test_helper.rb
ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Clean the database before each test
  setup do
    DatabaseCleaner.start
  end

  # Clean the database after each test
  teardown do
    DatabaseCleaner.clean
  end
end
