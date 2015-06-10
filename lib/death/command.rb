require 'facter'
require 'open3'

module Death::Command
  class << self
    def death(signal, pid, *pids)
      raise 'death command is supporting only Mac OS X.' unless supported_os?

      sound_pressure { system('say -v Ralph deeeeeeeeeeeattttth &') }

      Open3.popen3("kill #{[signal, pid, pids].join(' ')}") do |stdin, stdout, stderr|
        msg = stderr.read
        if /kill: illegal process id: kill/ === msg
          puts 'death: illegal process id: kill'
        else
          puts "#{msg.gsub(/kill/, 'death')}"
        end
      end
    end

    alias lml death

    private

    def sound_pressure
      processor_count = Facter[:processorcount].value

      (processor_count * 3).times { yield }
    end

    def supported_os?
      if RUBY_PLATFORM == 'java'
        require 'java'
        java.lang.System.getProperty('os.name') == 'Mac OS X'
      else
        /darwin/ === RUBY_PLATFORM
      end
    end
  end
end
