# frozen_string_literal: true

# Load library folder
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'support'

# Setup paths to environment variables
Helpers::Paths.create
