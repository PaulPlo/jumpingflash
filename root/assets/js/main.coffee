$ 			= require('zepto-browserify').$
gsap 		= require 'gsap'
classie 	= require('./lib/classie')
svgLoader 	= require('./lib/svgLoader')
modernizr 	= require('./lib/modernizr')

$ ->
	console.log('coucou') ; 

shuffle = (array) ->
	counter = array.length
	while (counter > 0)
		index = Math.floor(Math.random() * counter)
		counter--
		temp = array[counter]
		array[counter] = array[index]
		array[index] = temp
	return array

imagesToLoad = new Array()
preload = ->
	i = 0
	while i < preload.arguments.length
		imagesToLoad[i] = new Image
		imagesToLoad[i].src = preload.arguments[i]
		i++