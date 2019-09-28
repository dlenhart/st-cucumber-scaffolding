# frozen_string_literal: true

# Nenv vars
require 'nenv'

module Helpers
  DEFAULT_ENV     =     'test'
  DEFAULT_BROWSER =     'chrome'
  DEFAULT_URL     =     'localhost:8081'

  ENV_URL = {
    dev: 'localhost:8080',
    test: 'localhost:8081',
    ci: 'localhost:8082',
    local: 'localhost:8083'
  }.freeze

  Nenv.instance.create_method(:env) { |_v| ENV['TEST_ENV'] || DEFAULT_ENV }
  Nenv.instance.create_method(:url) { |_v| ENV_URL[Nenv.env.to_sym] || DEFAULT_URL }
end
