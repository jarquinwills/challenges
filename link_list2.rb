class LinkedListNode

  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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

def reverse_list(list, previous=nil)
  
  while list
    #puts "List: #{list.value}"

    after = list.next_node
    #puts "after: #{after.value}"
    list.next_node = previous
    #puts "list.next_node #{list.next_node}"
    previous = list
    #puts "previous#{previous}"
    list = after
    #puts "list #{list}"

  end


end

node1 = LinkedListNode.new(33)
node2 = LinkedListNode.new(44, node1)
node3 = LinkedListNode.new(55, node2)
print_values(node3)
puts "-------"
reverse_list(node3)
print_values(node1)

