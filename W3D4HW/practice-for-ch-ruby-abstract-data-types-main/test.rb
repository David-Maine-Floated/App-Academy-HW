class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def push(el)
    @stack << el 
    # adds an element to the stack
  end

  def pop
    @stack = @stack[0...-1]
    # removes one element from the stack
  end

  def peek
    @stack[0]
    # returns, but doesn't remove, the top element in the stack
  end
end

class Queue 

  def initialize
    @queue = []
  end  

  def enqueue(el)
    @queue << el  
  end
  
  def dequeue 
    @queue.shift 
  end
  
  def peek 
    @queue[0]
  end  

end   


class Map 
  def initialize
    @map = []

  end  

  def set(k,v)
    if @map.include([k,v])
      i = @map.index([k,v])
      @map[i] = [k,v]
    else 
      @map << [k.v] 
    end  
  end   

  def get(k)
    @map.each {|sub_arr| return sub_arr[1] if sub_arr[0] == k}
  end 
  
  def delete(k)
     @map.each_with_index {|sub_arr, i| @map.delete_at(i) if sub_arr[0] == k}
  end  

  def deep_dup 
    @map.map {|el| el.is_a?(Array) ? deep_dup(el) : el}
  end  


  def show 
    deep_dup
  end  

end
