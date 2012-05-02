#!/usr/bin/env ruby
require 'open3'

module Death::Command
  class << self
    def death(signal, pid, *pids)
      raise 'death command is supporting only Mac OS X.' unless support_os?

      10.times { system('say -v Ralph deeeeeeeeeeeattttth &') }

      Open3.popen3("kill #{[signal, pid, pids].join(' ')}") do |stdin, stdout, stderr|
      msg = stderr.read
        if msg =~ /kill: illegal process id: kill/
          puts 'death: illegal process id: kill'
        else
          puts "#{msg.gsub(/kill/, 'death')}"
        end
      end
    end

    alias lml death

    private

    def support_os?
      if RUBY_PLATFORM == 'java'
        require 'java'
        java.lang.System.getProperty('os.name') == 'Mac OS X'
      else
        RUBY_PLATFORM =~ /darwin/
      end
    end
  end
end
