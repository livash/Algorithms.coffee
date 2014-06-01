addChainedAttrAccessor = (obj, propertyAttr, attr) ->
	  obj[attr] = (newValues...) ->
	      if newValues.length is 0
	          obj[propertyAttr][attr]
	      else
	  	      obj[propertyAttr][attr] = newValues[0]
	  	      obj

class TeaCup
  constructor:  ->
    console.log "in the contructor"
  	@properties =
  	  size: 'medium'
  	  type: 'black'
  	  sugar: false
  	  cream: false
  	console.log "before chaining"
  	addChainedAttrAccessor(this, 'properties', attr) for attr in @properties

console.log "Tea Cup making ..."

earlgray = new TeaCup()
earlgray.size('small').type('Earl Grey').sugar('true')

console.log earlgray.properties
