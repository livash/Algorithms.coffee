# Testing suit for LInked List

LinkedList = require './../linked_list'
Node       = require './../node'
assert     = require 'assert'

describe 'Node class', ->
  node = new Node null, null, 'test'

  it 'creates an object of Node class', ->
    assert.equal node.data, 'test'

  it 'shows correct isTailNode() and isHeadNode() result', ->
    assert.equal node.isTailNode(), true
    assert.equal node.isHeadNode(), true

  it 'can remove itself', ->
    my_node = new Node null, node, 'my_node'
    assert.equal my_node.next, node
    assert.equal my_node.data, 'my_node'
    my_node.remove()
    assert.equal my_node.next, null
    assert.equal my_node.data, null

describe 'LinkedList class', ->
  list = true
  empty_list=true
  long_list = true
  a = true
  b = true
  c = true
  beforeEach ->
	  a = new Node null, null, 'A'
	  b = new Node null, null, 'B'
	  c = new Node null, null, 'C'
	  d = new Node null, null, 'D'

	  list = new LinkedList a
	  empty_list = new LinkedList()
	  long_list = new LinkedList a
	  long_list.add b
	  long_list.add c

  describe 'length()', ->
    it 'shows zero length for empty list', ->
      assert.equal empty_list.length(), 0

    it 'shows correct length for list of length 1', ->
      assert.equal list.length(), 1

    it 'shows correct length for a list of three items', ->
      assert.equal long_list.length(), 3

  describe 'add()', ->
    it 'correctly adds new items to the list, maintaining head and tail', ->
      assert.equal empty_list.head, null
      assert.equal empty_list.tail, null
      assert.equal long_list.head, c
      assert.equal long_list.tail, a

  describe 'delete()', ->
    it 'can delete item from a list of one node length', ->
      node = new Node null, null, 'new_node'
      my_list = new LinkedList node
      assert.equal my_list.length(), 1
      my_list.delete node
      assert.equal my_list.length(), 0

    it 'can delete item located in the middle of a list', ->
      long_list.delete b
      assert.equal long_list.length(), 2

  describe 'findByValue(val)', ->
    it 'finds the value in a list', ->
      found = long_list.findByValue 'C'
      assert.equal found.next, c.next
      assert.equal found.data, c.data

  describe 'insert()', ->
    p = new Node null, null, 'P'
    it 'can insert new nodes in the middle of a list', ->
      long_list.insert p, b
      assert.equal long_list.length(), 4
