class RPNCalculator
	def initialize
		@arr = []
		@val = 0
	end 

	def push(i)
		@arr.push(i)
	end

	def value
		return @val 
	end 

	def plus
		total = 0
		if @arr.length <= 0
			raise "calculator is empty"
		else 
			x = @arr.pop
			y = @arr.pop
			total = x + y 
		end 

		@arr.push(total)

		@val = total 
	end


	def minus
		total = 0 
		if @arr.length <= 0
			raise "calculator is empty"
		else 
			x = @arr.pop
			y = @arr.pop
			total = y - x
		end 

		@arr.push(total)

		@val = total 
	end

	def divide
		total = 0

		if @arr.length <= 0
			raise "calculator is empty"
		else 
			x = @arr.pop * 1.0 
			y = @arr.pop * 1.0 
			total = y / x
			@arr.push(total)
		end 

		@val = total 
	end

	def times 
		total = 0 
		if @arr.length <= 0
			raise "calculator is empty"
		else
			x = @arr.pop * 1.0 
			y = @arr.pop * 1.0 
			total = y * x
		end 

		@arr.push(total)

		@val = total 
	end 

	def tokens(str)
		arr = []
		str.split(' ').each do |i|
			if /[0-9]/ =~ i
				arr.push(i.to_i)
			else 
				arr.push(i.to_sym)
			end
		end
		
		arr 

	end 

	def evaluate(str)
		tokens(str).each do |x|
			if x == :*
				self.times
			elsif x == :/ 
				self.divide
			elsif x == :+
				self.plus
			elsif x == :-
				self.minus
			else 
				self.push(x) 
			end
		end
		self.value 

	end


end
