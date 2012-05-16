module Process
  def death(signal, pid, *pids)
    Death::Command.death(signal, pid, pids)
  end

  def lml(signal, pid, *pids)
    Death::Command.lml(signal, pid, pids)
  end

  module_function :death, :lml
end

