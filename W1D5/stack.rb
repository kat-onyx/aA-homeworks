class Stack
  attr_reader :stack

   def initialize
     @stack = []
   end

   def push(el)
     @stack << el
   end

   def pop
     @stack.pop
   end

   def peek
     # returns, but doesn't remove, the top element in the stack
     show = @stack[0]
   end
 end
