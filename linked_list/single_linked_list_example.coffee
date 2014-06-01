Node = require './single_linked_list'

# Testing
a = new Node null, null, 'A'
b = new Node a, null, 'B'
c = new Node b, null, 'C'

console.log "a node", a

# Print out members of the list

a.printListAfterThisNode()