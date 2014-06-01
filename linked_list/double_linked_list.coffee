# Double linked list

Node = require './single_linked_list'

class DoubleNode extends Node
  constructor: (@prev, @next, @data) ->
    #console.log "Constructing: ", @prev, @next, @data
    super @prev, @next, @data

  add: (node) ->
    # we have elements A and B, where C is inserted between them
    return null if node is null            # C == null
    element_after_intsert = this.next      # B
    this.next = node                       # A.next = C
    #console.log 'node.data', node.data
    node.prev = this if node.prev?         # C.prev = A
    unless this.next is null               # unless A.prev is null
      node.next = element_after_intsert                            # C.next = B
      element_after_intsert.prev = node if element_after_intsert?  # B.prev = C


  printListBeforeThisNode: ->
    prev_el = this.prev
    console.log 'START'
    console.log this.data, '<-'
    while prev_el?.prev isnt null
      console.log prev_el.data, '<-'
      prev_el = prev_el.prev
    # print data of the last element in the chain
    console.log prev_el.data, 'END'

module.exports = DoubleNode