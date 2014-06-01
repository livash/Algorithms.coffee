class CoffeeCup
	constructor: ->
	  @properties =
	  	strength: 'medium'
	  	sugar: false
	  	cream: false

  strength: (val) ->
    @properties.strength = val
    this

  sugar: (val) ->
    @properties.sugar = val
    this

  cream: (val) ->
    @properties.cream = val
    this


console.log "My Coffee"

morning_cup = new CoffeeCup

console.log morning_cup.properties

evening_cup = new CoffeeCup
evening_cup.strength 'dark'
evening_cup.cream true
evening_cup.sugar true

console.log evening_cup.properties