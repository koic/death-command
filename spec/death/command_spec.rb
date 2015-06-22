describe Death::Command do
  describe '.death' do
    include_context 'defined never end process class'

    before do
      @pid = fork { NeverEndProcess.new.run }
    end

    specify { expect { Death::Command.death('-KILL', @pid) }.not_to raise_error }
  end
end
