shared_context 'defined never ending process class' do
  class NeverEndingProcess
    def run
      loop {}
    end
  end
end
