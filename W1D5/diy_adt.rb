class Stack
   def initialize
     @ivar = []
   end

   def add(el)
     @ivar.push(el)# adds an element to the stack
   end

   def remove
     @ivar.pop
     @ivar # removes one element from the stack
   end

   def show
     @ivar# return a copy of the stack
   end
 end


class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
    @queue
  end

  def show
    @queue
  end
end


class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |pair|
      puts "Cannot assign, key already exists" if pair[0] == key
    end

    @map << [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end

    puts "key does not exist"
  end

  def remove(key)
    @map.each_index do |idx|
      if @map[idx][0] == key
         @map.delete_at(idx)
        return @map
      end
    end

    puts "key does not exist, cannot be removed."
  end

  def show
    @map
  end
end
