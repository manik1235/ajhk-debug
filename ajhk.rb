# ---------------------
# README
#
# Place a copy of this file in `config/initializers` for the
# Rails app you want to debug.
# Restart the container to load the class.
# Update this file with any changes that may be useful additions.
#
# ---------------------


class Ajhk
  @c = 0
  @binding_enabled = true

  BIND_STATE_FILE = "./ajhk_bind"

  class << self
    attr_accessor :c, :binding_enabled
  end

  def self.reset_c
    @c = 0
  end

  def self.next_c
    @c += 1
  end

  def self.bind
    # Binds and pauses execution inside this class
    # Useful for changing, updating, or reading variables
    binding.remote_pry if self.bind?
  end

  def self.bind?
    # Alias for `self.binding_enabled?`
    self.binding_enabled?
  end

  def self.binding_enabled?
    # Check the existence of the bind file
    # If it's there, binding is enabled.
    # If it's not, binding is disabled.
    @binding_enabled = File.exist?(BIND_STATE_FILE)
  end

  def self.enable_binding
    # Create a bind file
    File.new(BIND_STATE_FILE, mode="w").close
    @binding_enabled = true
  end

  def self.disable_binding
    # Remove the bind file if it exists to disable binding.
    File.delete(BIND_STATE_FILE) if File.exist?(BIND_STATE_FILE)
    @binding_enabled = false
  end
end
