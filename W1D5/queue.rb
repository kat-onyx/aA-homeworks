class Queue
  attr_reader :stack

  def initialize
    @stack = []
  end

  def enqueue(el)
    @stack.unshift(el)
  end

  def dequeue

  end

  def peek

  end
end
