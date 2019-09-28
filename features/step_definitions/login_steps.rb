# frozen_string_literal: true

require 'selenium-webdriver'
# driver = Selenium::WebDriver.for :chrome
require 'colorize'
require 'pry'

Given(/^I am on the homepage$/) do
  # driver.navigate.to "http://demo.guru99.com/"
  puts 'hi'
  Test()
  # binding.pry

  puts "Environment: #{ENV['TEST_ENV']}"
  puts "From nenv: #{Nenv.env}"
  puts "URL From nenv: #{Nenv.url}"
end
