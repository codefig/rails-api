ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'mocha/minitest'
require 'minitest/unit'
require 'minitest/mock'
require 'minitest/autorun'
require 'webmock/minitest'
require "rack/test"

module ActiveSupport

  
  class TestCase
    include Rack::Test::Methods
    # include ::FactoryBot::Syntax::Methods
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)
  
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all
    # Add more helper methods to be used by all tests here...
  end

end

