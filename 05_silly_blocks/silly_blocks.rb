def reverser
	words = yield.split(' ')
	for word in words do 
		word.reverse! 
	end 
	words.join(' ')
end 

def adder(x=1)
	a = yield()
	return x + a
end

def repeater(x=1)
	x.times do yield
	end 
end
