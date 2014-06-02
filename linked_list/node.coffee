###
  Node class.
  keeps track of
    - previous node
    - next node
    - data (payload)

###

class Node
  constructor: (@prev, @next, @data) ->
    null

  name: 'Node'

  isTailNode: ->
    this.next is null

  isHeadNode: ->
    this.prev is null

  remove: ->
    for prop in this
      delete this.prop

module.exports = Node