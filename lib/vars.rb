# frozen_string_literal: true

require 'nenv'

# Create environment variables used throughout the suite
module Helpers
  DEFAULT_ENV     =     'test'
  DEFAULT_BROWSER =     'chrome'
  DEFAULT_URL     =     'http://demo.guru99.com/'

  ENV_URL = {
    dev: 'http://demo.guru99.com/',
    test: 'http://demo.guru99.com/',
    ci: 'localhost:8082',
    local: 'localhost:8083'
  }.freeze

  Nenv.instance.create_method(:env) { |_v| ENV['TEST_ENV'] || DEFAULT_ENV }
  Nenv.instance.create_method(:url) { ENV_URL[Nenv.env.to_sym] || DEFAULT_URL }
end
