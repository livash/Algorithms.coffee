
line = ->
  console.log "....................."

print = (args...) ->
  for arg in args
    console.log arg



g = (n, foo = false) ->

  return 0 if n is 0
  f(n-1)

f = (n) ->
  g(n)

f 5

console.log g.length, g.name

`function foo (x,y,z) {`
console.log 'n foo'
`}`

console.log 'Function', foo.name, 'accepts', foo.length, 'parameters'


line()
print 'using Function.toString()'

myFunc = ->
  # some comment
  a = 100
  console.log "Inside my funciton"

print myFunc.toString()

line()
print "using Function.call and Function.bind"

list = () ->
  Array.prototype.slice.call(arguments)

print list 1,2,3

leadingFortytwo = list.bind undefined, 42

print leadingFortytwo()
print leadingFortytwo 1,2,3


#print()
#print 'using Object.prototype.watch()'

#o = prop: 1
#print o.prop
#o.watch 'prop', (id, oldval, newval) ->
#  print 'For o.prop changed from', oldval, 'to new val', newval
#o.prop = 5

print()
print 'using Object.keys()'

a = a: 1, b: 2, c: 3, id: 42
print "here is the object", a
print "and it's keys", Object.keys a

print()
print 'Using Object.defineProperty()'

a = {foo: 'bar'}
print a
Object.defineProperty(a, 'new_prop', {value: 42})
print a

