# Single linked list class

class Node
  constructor: (prev, @next, @data) ->
    @add(prev)

  add: (node) ->
    return null if node is null
    if node.next is null
      node.next = this
    else
      temp = node.next
      node.next = this
      this.next = temp


  printListAfterThisNode: ->
    next_el = this.next
    console.log "next element ", next_el
    console.log 'START'
    console.log this.data, '->'
    while next_el?.next isnt null
      console.log next_el.data, '->'
      next_el = next_el.next
    console.log next_el.data, 'END'

module.exports = Node