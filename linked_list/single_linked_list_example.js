// Generated by CoffeeScript 1.6.3
(function() {
  var Node, a, b, b2, c;

  Node = require('./single_linked_list');

  a = new Node(null, null, 'A');

  b = new Node(a, null, 'B');

  c = new Node(b, null, 'C');

  console.log("a node", a);

  a.printListAfterThisNode();

  console.log('Insert new node, and re-print the list from head');

  b2 = new Node(a, null, 'B2');

  a.printListAfterThisNode();

}).call(this);