describe Death::Killer do
  describe '.kill' do
    include_context 'defined never ending process class'

    before do
      @pid = fork { NeverEndingProcess.new.run }
    end

    specify { expect { Death::Killer.kill('-KILL', @pid) }.not_to raise_error }
  end
end
