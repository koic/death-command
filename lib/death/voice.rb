require 'facter'
require 'shellwords'

module Death
  class Voice
    class << self
      def say(message)
        new.say(message)
      end
    end

    def initialize(ressure_factor = 3)
      @ressure_factor = ressure_factor.to_i
    end

    def say(message)
      raise 'death command is supporting only Mac OS X.' unless supported_os?

      sound_pressure { system("say -v Ralph #{Shellwords.shellescape(message)} &") }
    end

    private

    def sound_pressure
      processor_count = Facter[:processorcount].value

      (processor_count * @ressure_factor).times { yield }
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
