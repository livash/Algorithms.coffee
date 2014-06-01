
module.exports =
  print: (args...) ->
    console.log ".. foo"
    if args?.length > 0
	  for arg in args
	    console.log arg
	else
	  console.log "..................."
