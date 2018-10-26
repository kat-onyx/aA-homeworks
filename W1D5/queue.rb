class Queue
  attr_reader :stack

  def initialize
    @stack = []
  end

  def enqueue(el)
    @stack.unshift(el)
  end

  def dequeue
    @stack.pop
  end

  def peek
    @stack[0]
  end
end
