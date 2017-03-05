class MMU
  # 65536 bytes
  MEMORY_SIZE = 2**16

  attr_reader :memory

  def initializer
    @memory = Array.new MEMORY_SIZE, 0
  end

  def [](i)
    raise 
  end

end
