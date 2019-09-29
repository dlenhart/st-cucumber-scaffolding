# frozen_string_literal: true

# Path helper
module Helpers
  # Add directories as environment variables
  class Paths
    def self.create
      %w[reports screenshots].each do |word|
        Nenv.instance.create_method("#{word.to_sym}_dir") do |_x|
          File.join(File.dirname(__FILE__), '../..', word.to_s)
        end
      end
    end
  end
end
