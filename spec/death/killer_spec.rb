describe Death::Killer do
  class NeverEndProcess
    def run
      loop {}
    end
  end

  describe '.kill' do
    before do
      @pid = fork { NeverEndProcess.new.run }
    end

    specify { expect { Death::Killer.kill('-KILL', @pid) }.not_to raise_error }
  end
end
