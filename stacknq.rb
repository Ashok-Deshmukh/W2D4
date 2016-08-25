
class MyStack
  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
    el
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.dup
  end
end




class MyQueue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end


class StackQueue
  def initialize
    @stackqueue = MyStack.new

  end


end
