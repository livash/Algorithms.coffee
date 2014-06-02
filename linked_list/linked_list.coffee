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
    if @head is null
      @head = node
      @tail = node
    # reset head
    temp = @head
    @head = node
    @head.next = temp
    temp.prev = node

  insert: (new_node, after_node) ->
    # insert a node after the after_node
    return false unless after_node is null or this.findByValue(after_node.data)
    return false unless new_node.belongsToNoList()

    if after_node is null
      new_node.prev = @tail
      @tail.next = new_node
      @tail = new_node
    else
	    moved_node = after_node.next
	    new_node.next = moved_node
	    moved_node.prev = new_node
	    after_node.next = new_node
	    new_node.prev = after_node


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
      @head.prev = null
    else
      before_el = node.prev
      after_el = node.next
      before_el.next = after_el
      after_el.prev = before_el
    node.remove()

  findByValue: (val) ->
    node = @head
    while node.next isnt null
      return node if node.data is val
      node = node.next
    null

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
