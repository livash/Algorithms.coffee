Node = require './single_linked_list'

# Testing
a = new Node null, null, 'A'
b = new Node a, null, 'B'
c = new Node b, null, 'C'

console.log "a node", a

# Print out members of the list

a.printListAfterThisNode()

# Insert new node, and re-print the list from head

console.log 'Insert new node, and re-print the list from head'
b2 = new Node a, null, 'B2'

a.printListAfterThisNode()