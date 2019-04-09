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

  class << self
    attr_accessor :c
  end

  def self.reset_c
    @c = 0
  end
end
