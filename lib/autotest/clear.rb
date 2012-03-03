module Autotest::Clear
  VERSION = '1.0.0'

  def self.clear_terminal= val
    @@clear_terminal = val
  end
  self.clear_terminal = true

  ##
  # From autotest/growl
  # Set the label and clear the terminal.
  Autotest.add_hook :run_command do
    print "\n"*2 + '-'*80 + "\n"*2
    print "\e[2J\e[f" if @@clear_terminal
    false
  end
end
