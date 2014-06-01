# Single linked list class

class Node
  constructor: (@prev, @next, @data) ->
    @addToPrev(@prev)

  addToPrev: (node) ->
    return null if node is null
    node.next = this

  printListAfterThisNode: ->
    next_el = this.next
    console.log this.data, '->'
    while next_el?.next isnt null
      console.log next_el.data, '->'
      next_el = next_el.next
    console.log next_el.data, 'END'

module.exports = Node