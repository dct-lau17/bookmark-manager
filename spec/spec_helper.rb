# ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative './setup_test_database'

Capybara.app = BookmarkManager


RSpec.configure do |config|
  config.before(:each) do
    setup_test_database!
  end
end
