class Stack

  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack.push(el) if !@stack.include?(el)
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    @stack
  end

end

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el) if !@queue.include?(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end

class Map

  def initialize
    @map = {}
  end

  def assign(key, value)
    @map[key] = value
  end

  def lookup(key)
    @map[key]
  end

  def remove(key)
    @map.delete(key)
  end

  def show
    @map
  end
  
end
