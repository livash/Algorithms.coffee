dup = (obj) ->
	if not obj? or typeof obj isnt 'object'
	  return obj

  if obj instanceof Date
    return new Date(obj.getTime())

  newInstance = new obj.constructor()

  for key of obj
    newInstance[key] = dup obj[key]

  return newInstance


console.log "Duplicating objects"

x =
  foo: 'foo'
  bar: 'bar'

y = dup(x)

console.log x
console.log y
