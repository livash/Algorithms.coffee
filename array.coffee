_       = require 'underscore'

print = (args...) ->
  if args?.length > 0
    for arg in args
      console.log arg
  else
    console.log "..................."

arr = [1..10]
print 'my array ', arr
print _.first arr
print _.last arr

print()
print 'using _.compact'

arr[0] = ''
arr[5] = false
print 'broken arr', arr
print 'cmpact', _.compact arr

print()
print 'using _.flatten'

arr = [[1,2], [[3,4], 5,6]]
print 'before flatten', arr
print 'after flatten', _.flatten arr

print()
print 'using _.without'

arr = [1..10]

print 'my_arr ', arr
print "my_arr without 1 and 10", _.without arr, 1,10 

print()
print 'using _.partition'

arr = [1..10]
print 'partitioned array ', _.partition arr, (el) ->
  el % 2 is 0

print()
print 'using _.union'

a = [1..5]
b = [3..7]
print 'arr one', a
print 'arr two', b
print 'union of two arrays', _.union(a,b)

print 'intersection of two', _.intersection a,b
print 'difference of two', _.difference(a,b), _.difference(b,a)
