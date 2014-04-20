$ ->
	#var t
	t = 0
	
	# if localStorage.tt
	# 	if localStorage.tt > 10000
	# 		localStorage.tt = 0
	# 	else
	# 		t = localStorage.tt
	# 		$('.all') .animate(
	# 			top: t + '%'
	# 		,0 )
	
	
	l = ($('.all').find('li').length - 1) * 100


	document.onkeydown = (event)->
		
		if event.keyCode is 37 or event.keyCode is 38
			pre()
			
		else if  event.keyCode is 39 or event.keyCode is 40
			next()
		console.log((-t),l)

	$('.next').on 'click', ->
		next()
	$('.pre').on 'click', ->
		pre()

	pre = ->
		if t is 0

		else
			t = t + 100
			$('.all').animate(
				top: t + '%' 
			, 500)	

	next = ->
		if (-t) is l
		else
			t = t - 100
			$('.all').animate(
				top: t + '%' 
			, 500)

