require 'facter'
require 'shellwords'

module Death::Voice
  class << self
    def say(message)
      sound_pressure { system("say -v Ralph #{Shellwords.shellescape(message)} &") }
    end

    private

    def sound_pressure
      processor_count = Facter[:processorcount].value

      (processor_count * 3).times { yield }
    end
  end
end
