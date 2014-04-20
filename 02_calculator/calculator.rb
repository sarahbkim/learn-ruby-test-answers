def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	arr.inject(0) {|sum, i| sum + i } 
end

def multiply(arr)
	sum = 1
	arr.each do |i|
		sum *= i 
	end 
	sum
end

def power(x, y)
	x ** y
end

def factorial(i)
	result = 1
	
	while i > 1
		result *= i 
		i -= 1
	end

	result 

end

