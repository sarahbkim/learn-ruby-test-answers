elapsed_time = 0 

def measure(x=1)
	elapsed_time = [] 

	x.times do 
		start = Time.now
		yield
		stop = Time.now 
		elapsed_time.push(stop - start)
	end 

	total = elapsed_time.inject { |sum,i| sum + i }
	return total / x
	
end 
