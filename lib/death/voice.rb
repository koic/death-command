require 'facter'
require 'shellwords'

module Death::Voice
  class << self
    def say(message)
      raise 'death command is supporting only Mac OS X.' unless supported_os?

      sound_pressure { system("say -v Ralph #{Shellwords.shellescape(message)} &") }
    end

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
