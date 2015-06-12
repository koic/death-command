require 'open3'
require 'shellwords'

module Death::Command
  class << self
    def death(signal, pid, *pids)
      Death::Voice.say('deeeeeeeeeeeattttth')

      command = "kill #{[signal, pid, pids].flatten.compact.shelljoin}"

      Open3.popen3(command) do |stdin, stdout, stderr|
        msg = stderr.read
        if /kill: illegal process id: kill/ === msg
          puts 'death: illegal process id: kill'
        else
          puts "#{msg.gsub(/kill/, 'death')}"
        end
      end
    end

    alias lml death
  end
end
