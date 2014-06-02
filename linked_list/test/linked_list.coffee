# Testing suit for LInked List

LinkedList = require './../linked_list'
Node       = require './../node'
assert     = require 'assert'

describe 'Node class', ->
  node = new Node(null, null, 'test')

  it 'creates an object of Node class', ->
    assert.equal node.data, 'test'

  it 'shows correct isTailNode() and isHeadNode() result', ->
    assert.equal node.isTailNode(), true
    assert.equal node.isHeadNode(), true

describe 'LinkedList class', ->
  a = new Node null, null, 'A'
  b = new Node null, null, 'B'
  c = new Node null, null, 'C'
  d = new Node null, null, 'D'

  list = new LinkedList a
  my_list = new LinkedList()
  long_list = new LinkedList a
  long_list.add b
  long_list.add c

  describe 'length()', ->
    it 'shows zero length for empty list', ->
      console.log my_list
      assert.equal my_list.length(), 0

    it 'shows correct length for list of length 1', ->
      assert.equal list.length(), 1

    it 'shows correct length for a list of three items', ->
      assert.equal long_list.length(), 3
