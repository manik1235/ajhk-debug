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
    binding.remote_pry if self.binding_enabled?
  end

  def self.bind?
    # Alias for `self.binding_enabled?`
    self.binding_enabled?
  end

  def self.binding_enabled?
    @binding_enabled
  end

  def self.enable_binding
    @binding_enabled = true
  end

  def self.disable_binding
    @binding_enabled = false
  end
end
