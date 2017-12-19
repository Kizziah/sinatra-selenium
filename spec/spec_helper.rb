require 'rspec'
require 'capybara/dsl'
require 'pry'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|  
  config.default_max_wait_time = 10 # seconds
  config.default_driver        = :selenium
end 

RSpec.configure do |config|
  config.include Capybara::DSL
end