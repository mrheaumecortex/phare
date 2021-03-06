require 'English'
require 'optparse'
require 'yaml'
require 'phare/version'

require 'phare/cli'
require 'phare/git'

require 'phare/check'
require 'phare/check/rubocop'
require 'phare/check/scss_lint'
require 'phare/check/jshint'
require 'phare/check/jscs'

require 'phare/check_suite'

module Phare
  def self.system(*args)
    Kernel.system(*args)
  end

  def self.system_output(args)
    `#{args}`
  end

  def self.last_exit_status
    $CHILD_STATUS.exitstatus
  end

  def self.puts(*args)
    STDOUT.puts(*args)
  end

  def self.banner(string)
    Phare.puts '-' * string.length
    Phare.puts string
    Phare.puts '-' * string.length
  end
end
