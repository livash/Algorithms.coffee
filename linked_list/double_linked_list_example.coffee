DoubleNode = require './double_linked_list'

a = new DoubleNode null, null, 'A'
b = new DoubleNode a, null, 'B'
c = new DoubleNode b, null, 'C'
d = new DoubleNode c, null, 'D'

a.printListAfterThisNode()
#d.printListBeforeThisNode()

# Insert an element and re-print the list from head and tail
console.log 'Insert an element and re-print the list'

b1 = new DoubleNode a, null, 'B1'
#a.printListAfterThisNode()