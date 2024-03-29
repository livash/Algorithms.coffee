// Generated by CoffeeScript 1.6.3
(function() {
  var Node;

  Node = (function() {
    function Node(prev, next, data) {
      this.next = next;
      this.data = data;
      this.add(prev);
    }

    Node.prototype.add = function(node) {
      var temp;
      if (node === null) {
        return null;
      }
      if (node.next === null) {
        return node.next = this;
      } else {
        temp = node.next;
        node.next = this;
        return this.next = temp;
      }
    };

    Node.prototype.printListAfterThisNode = function() {
      var next_el;
      next_el = this.next;
      console.log("next element ", next_el);
      console.log('START');
      console.log(this.data, '->');
      while ((next_el != null ? next_el.next : void 0) !== null) {
        console.log(next_el.data, '->');
        next_el = next_el.next;
      }
      return console.log(next_el.data, 'END');
    };

    return Node;

  })();

  module.exports = Node;

}).call(this);
