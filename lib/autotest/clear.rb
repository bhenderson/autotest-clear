module Autotest::Clear
  VERSION = '1.1.0'

  CLEAR = "\e[2J\e[f"
  LINE  = "\n"*2 + '-'*80 + "\n"*2

  def self.clear_terminal= val
    @@clear_terminal = val
  end
  self.clear_terminal = true

  ##
  # From autotest/growl
  # Set the label and clear the terminal.
  Autotest.add_hook :run_command do
    print LINE
    print CLEAR if @@clear_terminal
    false
  end

  Autotest.add_hook :updated do |at, updated|
    p updated if $DEBUG
    false
  end
end
