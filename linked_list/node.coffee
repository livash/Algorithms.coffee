###
  Node class. Double-linked node.
  keeps track of
    - previous node
    - next node
    - data (payload)

###

class Node
  constructor: (@prev, @next, @data) ->
    null

  isTailNode: ->
    this.next is null

  isHeadNode: ->
    this.prev is null

  belongsToNoList: ->
    this.prev is null and this.next is null

  remove: ->
    @next = null
    @prev = null
    @data = null

module.exports = Node