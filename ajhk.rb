# ---------------------
# README
#
# Place a copy of this file (or create a symlink) in `config/initializers` for the
# app you want to debug.
# Restart the container to load the class.
# Update this file with any changes that may be useful additions.
# Add new modules and classes to the ajhk/ subfolder to extend funcationality.
#
# ---------------------

Dir[File.join(__dir__, 'ajhk', '*.rb')].each { |file| require file }
# require 'pry' # Enable as needed

module Ajhk
  extend Bind
end
