# frozen_string_literal: true

# third party Libs
require 'rubygems'
require 'rspec'
require 'watir'
require 'nenv'
require 'page-object'
require 'pry'
require 'facets'

# internal libs
require 'vars'
require_relative 'pages'

# Helpers
require_relative 'helpers/paths'

def test_func
  puts 'from test'
end
