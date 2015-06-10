describe Death::Command do
  class EndlessProcess
    def run
      loop {}
    end
  end

  describe '.death' do
    before do
      @pid = fork { EndlessProcess.new.run }
    end

    specify { expect { Death::Command.death(:KILL, @pid) }.not_to raise_error }
  end
end
