module Bind
  require 'pathname'

  BIND_STATE_FILE = "./ajhk_bind"

  def bind?
    # Alias for `self.binding_enabled?`
    self.binding_enabled?
  end

  def binding_enabled?
    # Check the existence of the bind file
    # If it's there, binding is enabled.
    # If it's not, binding is disabled.
    File.exist?(BIND_STATE_FILE)
  end

  def enable_binding
    # Create a bind file
    File.new(BIND_STATE_FILE, mode="w").close
    "Ok. `#{Pathname.new(BIND_STATE_FILE).expand_path}` created."
  end

  def disable_binding
    # Remove the bind file if it exists to disable binding.
    if File.exist?(BIND_STATE_FILE)
      File.delete(BIND_STATE_FILE)
      "Ok. `#{Pathname.new(BIND_STATE_FILE).expand_path}` deleted."
    else
      "Already disabled. `#{Pathname.new(BIND_STATE_FILE).expand_path}` doesn't exist."
    end
  end
end
