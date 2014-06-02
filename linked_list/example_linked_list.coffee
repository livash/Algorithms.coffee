# Example of using Linked List

LinkedList = require './linked_list'
Node = require './node'

a = new Node null, null, 'A'
b = new Node null, null, 'B'
c = new Node null, null, 'C'
d = new Node null, null, 'D'


list = new LinkedList a
console.log "List length ", list.length()
list.add b
list.add c

console.log list

console.log 'Add an element'
list.add d
console.log list
console.log "List length is ", list.length()

console.log 'Delete an element'
list.delete d
console.log list
console.log "List length is ", list.length()


