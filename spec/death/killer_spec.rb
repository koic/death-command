describe Death::Killer do
  describe '.kill' do
    include_context 'defined never end process class'

    before do
      @pid = fork { NeverEndProcess.new.run }
    end

    specify { expect { Death::Killer.kill('-KILL', @pid) }.not_to raise_error }
  end
end
