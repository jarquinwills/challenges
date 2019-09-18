class LinkedListNode

  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def push(value)
    if @next_node == nil 
      a = Stack.new(value)
      @next_node = a
    else
      @next_node.push(value)
    end
  end

  def pop
    if @next_node.next_node == nil
      temp = @next_node.value
      @next_node = nil
      return temp
    else
      @next_node.pop
    end
  end
end

class Stack
  attr_reader :data

  def initialize
      @data = nil
  end

  # Push a value onto the stack
  def push(value)
      @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
      if @data
          top_value = @data.value
          @data = @data.next_node
      else
          top_value = nil
      end
      return top_value
  end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} ---> " 
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list_node)

  stack = Stack.new

  while list_node 
    stack.push(list_node.value)
    list_node = list_node.next_node
  end
  
  return stack.data

end

node1 = LinkedListNode.new(33)
node2 = LinkedListNode.new(44, node1)
node3 = LinkedListNode.new(55, node2)
print_values(node3)

reversed_list = reverse_list(node3)
print_values(reversed_list)


