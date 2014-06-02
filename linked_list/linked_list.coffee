###
 Version of a Stack implementation using
 doubly-linked linked-list
###

Node = require './node'

class LinkedList
  constructor: (@head = null) ->
    @tail = @head
    null

  add: (node) -> #adds new node as head
    return unless node instanceof Node
    @head ?= node
    @tail ?= node
    # reset head
    temp = @head
    @head = node
    @head.next = temp

  insert: (node, after_node) ->
    # insert a node after the after_node


  delete: (node) ->
    #delete a node from a list
    if node.isHeadNode() and node.isTailNode()
      @head = null
      @tail = null
    else if node.isTailNode()
      @tail = node.prev
      @tail.next = null
    else if node.isHeadNode()
      @head = node.next
      node.next.prev = null
    else
      @head = node.prev
      @tail = node.next
      @head.next = tail
      @tail.prev = head
    node.remove()

  findByValue: (val) ->
    # find a node by it's value

  print: ->
    # print out payload for the list in sequense HEAD to TAIL

  length: ->
    # return the number of nodes in a list
    return 0 if @head is null
    counter = 0
    node = @head
    while node isnt @tail
      counter++
      node = node.next
    counter + 1



module.exports = LinkedList
