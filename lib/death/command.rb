module Death::Command
  class << self
    def death(signal, pid, *pids)
      Death::Voice.say('deeeeeeeeeeeattttth')

      Death::Killer.kill(signal, pid, *pids)
    end

    alias lml death
  end
end
