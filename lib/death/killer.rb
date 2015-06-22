require 'open3'
require 'shellwords'

module Death::Killer
  class << self
    def kill(signal, pid, *pids)
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
  end
end
