ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require "minitest/autorun"
require "minitest/rails"

# Uncomment if you want Capybara in accceptance/integration tests
# require "minitest/rails/capybara"

# Uncomment if you want awesome colorful output
require "minitest/pride"

Dir[Rails.root.join("test/support/**/*.rb")].each {|f| require f}

DatabaseCleaner.clean_with :truncation

class MiniTest::Rails::ActiveSupport::TestCase
#   before :each do
#     DatabaseCleaner.start
#   end
#   after :each do
#     DatabaseCleaner.clean
#   end
end

FakeWeb.allow_net_connect = false

OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:github, GithubAuth::auth)

# Do you want all existing Rails tests to use MiniTest::Rails?
# Comment out the following and either:
# A) Change the require on the existing tests to `require "minitest_helper"`
# B) Require this file's code in test_helper.rb

# MiniTest::Rails.override_testunit!
