# frozen_string_literal: true

Given(/^I am on the homepage$/) do

  @page = LoginPage.new(@browser)
  @page.navigate

  #puts "Environment: #{ENV['TEST_ENV']}"
  #puts "From nenv: #{Nenv.env}"
  #puts "URL From nenv: #{Nenv.url}"

  #puts '--'
  #puts "Reports dir #{Nenv.reports_dir}"
  #puts "Screenshots dir #{Nenv.screenshots_dir}"
end

When(/^enter blank details for Register$/) do
  @page.submit_creds('Test')
  binding.pry
end
