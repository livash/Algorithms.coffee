// Generated by CoffeeScript 1.6.3
(function() {
  var LinkedList, Node, assert;

  LinkedList = require('./../linked_list');

  Node = require('./../node');

  assert = require('assert');

  describe('Node class', function() {
    var node;
    node = new Node(null, null, 'test');
    it('creates an object of Node class', function() {
      return assert.equal(node.data, 'test');
    });
    it('shows correct isTailNode() and isHeadNode() result', function() {
      assert.equal(node.isTailNode(), true);
      return assert.equal(node.isHeadNode(), true);
    });
    return it('can remove itself', function() {
      var my_node;
      my_node = new Node(null, node, 'my_node');
      assert.equal(my_node.next, node);
      assert.equal(my_node.data, 'my_node');
      my_node.remove();
      assert.equal(my_node.next, null);
      return assert.equal(my_node.data, null);
    });
  });

  describe('LinkedList class', function() {
    var a, b, c, empty_list, list, long_list, p;
    list = true;
    empty_list = true;
    long_list = true;
    a = true;
    b = true;
    c = true;
    p = true;
    beforeEach(function() {
      var d;
      a = new Node(null, null, 'A');
      b = new Node(null, null, 'B');
      c = new Node(null, null, 'C');
      d = new Node(null, null, 'D');
      p = new Node(null, null, 'P');
      list = new LinkedList(a);
      empty_list = new LinkedList();
      long_list = new LinkedList(a);
      long_list.add(b);
      return long_list.add(c);
    });
    describe('length()', function() {
      it('shows zero length for empty list', function() {
        return assert.equal(empty_list.length(), 0);
      });
      it('shows correct length for list of length 1', function() {
        return assert.equal(list.length(), 1);
      });
      return it('shows correct length for a list of three items', function() {
        return assert.equal(long_list.length(), 3);
      });
    });
    describe('add()', function() {
      return it('correctly adds new items to the list, maintaining head and tail', function() {
        assert.equal(empty_list.head, null);
        assert.equal(empty_list.tail, null);
        assert.equal(long_list.head, c);
        return assert.equal(long_list.tail, a);
      });
    });
    describe('delete()', function() {
      it('can delete item from a list of one node length', function() {
        var my_list, node;
        node = new Node(null, null, 'new_node');
        my_list = new LinkedList(node);
        assert.equal(my_list.length(), 1);
        my_list["delete"](node);
        return assert.equal(my_list.length(), 0);
      });
      return it('can delete item located in the middle of a list', function() {
        long_list["delete"](b);
        return assert.equal(long_list.length(), 2);
      });
    });
    describe('findByValue(val)', function() {
      return it('finds the value in a list', function() {
        var found;
        found = long_list.findByValue('C');
        assert.equal(found.next, c.next);
        return assert.equal(found.data, c.data);
      });
    });
    return describe('insert()', function() {
      it('can insert new nodes in the middle of a list', function() {
        long_list.insert(p, b);
        return assert.equal(long_list.length(), 4);
      });
      return it('can insert elements at the end of a list', function() {
        long_list.insert(p, null);
        return assert.equal(long_list.length(), 4);
      });
    });
  });

}).call(this);
