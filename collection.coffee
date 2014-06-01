_ = require 'underscore'

fruit = ['banana', 'apple', 'pear', 'cherry', 'pineapple']
foods = ['bread', 'banana', 'butter', 'ham', 'herbs']
drinks = ['tea', 'coffee', 'juice', 'rum', 'wine', 'soda', 'water']
arr = [1, 2, 3, 4]
list = [[4,5], [3,2], [1,0]]
authors_list = [
  {author: "Tolstoy", year: 1812, title: "War and Peace"}
  {author: "Dostoevskiy", year: 1890, title: "Crime and Punishment"}
  {author: "Dostoevskiy", year: 1890, title: "Other"}
  {author: "Bulgakov", year: 1930, "Master and Margarita"}
]

print = (args...) ->
  if args?.length > 0
    for arg in args
      console.log arg
  else
    console.log "..................."

_.each fruit, (el) ->
  console.log el

print()

fruit.forEach (el) ->
  console.log el

print()
print 'using _.map'

b_foods = _.map foods, (item) -> 
  return item if item[0] is 'b'

print(b_foods)

print()
print 'using _.reduce'

summing = (memo, num) ->
  return memo + num

sum = _.reduce arr, summing, 0

sum_two = _.reduce arr, (start, num) -> 
  return start + num
 , 0

print sum, sum_two

print()
print 'using _.reduceRight'

new_val = _.reduceRight list, (memo, el) ->
  memo.concat el
, []
print list, new_val

print()
print 'using _.find'

my_val = _.find foods, (el) ->
  el[0] is 'b'

print my_val

print()
print 'using _.filter'

my_val = _.filter foods, (el) ->
  el[0] is 'b'

print my_val

print()
print 'using _.where'

print authors_list
print()
print _.where authors_list, {author: "Dostoevskiy"}

print()
print 'using _findWhere'
print _.findWhere authors_list, {author: "Dostoevskiy"}

print()
print 'using _.reject'
my_list = [1..10]
print my_list
print _.reject my_list, (num) ->
  num % 2 is 0

print()
print 'using _.every'
print _.every my_list, (el) ->
  typeof el is 'number'
print _.every my_list, (el) ->
  typeof el is 'string'

print()
print 'using _.some'
my_arr = [1..5]
my_arr = my_arr.concat ['some', 'any']

print my_arr
print _.some my_arr, (el) ->
  typeof el is 'string'

print()
print 'using _.contains'
arr = [1..5]
print arr
print _.contains arr, 5

print()
print 'using _.invoke'

print _.invoke([[5, 1, 7], [3, 2, 1]], 'sort')

print()
print 'using _.pluck'

family = [
  {name: 'Jon', age: 31}
  {name: 'Helen', age: 31}
  {name: 'Sasha', age: 38}
]

print _.pluck family, 'name'

print _.reduce (_.pluck family, 'age'), (memo, num) ->
  memo + num
, 0

print()
print 'using _.max'

print _.max family, (el) ->
  el.age


print()
print 'using _.min'

print _.min family, (el) ->
  el.age

print()
print 'using Math.random()'

arr = [1..10]
arr_two = _.map arr, (el) ->
  Math.floor(el * Math.random())

print arr, arr_two

myFunc = ->
  arr = [1..10]
  arr_two = _.map arr, (el) ->
    Math.floor(el * Math.random())
  arr_two

master = []
for idx in [1..10]
  master.push myFunc()

print master

print()
print 'using _.sortBy'

randomVal = (max) ->
  Math.floor(max * Math.random())

myRandom = (num) ->
  return [] if typeof num isnt 'number'
  arr = []
  idx = num
  counter = 0
  while idx > 0
    counter++
    temp = randomVal(num)
    if _.contains arr, temp
      temp = randomVal(num)
    else
      arr.push temp
      idx--
  print 'counter = ', counter
  arr

my_arr = myRandom 10

print 'My random array', my_arr

my_sorted_arr = _.sortBy my_arr, (el) ->
  el

print 'My sorted array', my_sorted_arr

print()
print 'using _.groupBy'

randomDecimal = ->
  Math.floor(100 * Math.random()) / 10

randomDecimalArray = (len) ->
  arr = []
  for idx in [1..len]
    arr.push randomDecimal()
  arr

my_arr = randomDecimalArray 10

print "my array: ", my_arr

print 'groups: ', _.groupBy my_arr, (el) ->
  Math.floor(el)

print()
print 'using _.indexBy'

print family
print _.indexBy family, 'name'

print()
print 'using _.countBy'

arr = [1..100]
print _.countBy arr, (num) ->
  if num % 2 is 0 then 'even' else 'odd'

print()
print 'using _.shuffle'

arr = [1..20]
print "is shuffled: ", (_.shuffle arr) is arr

print()
print 'using _.sample'

arr = [1..10]
print 'sample of 3 out of 10: ', _.sample arr, 3

print()
print 'using _.size'

print "my family: ", family
print "the sie of my family is ", _.size family












