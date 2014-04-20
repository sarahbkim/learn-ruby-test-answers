class Temperature
	def initialize(opts = {:f => 0, :c => 0})
		@f = opts[:f]
		@c = opts[:c]
	end

	def in_fahrenheit
		if @c
			(@c * 9.0) / 5 + 32
		else 
			@f
		end
	end

	def in_celsius
		if @f
			(@f - 32.0) * 5 / 9
		else 
			@c
		end
	end

	def self.from_celsius(c)
		Temperature.new(:c => c)
	end

	def self.from_fahrenheit(f)
		Temperature.new(:f => f) 
	end

end

class Celcius < Temperature
	
	def initialize(c)
		super(:c => c)
	end

end

class Fahrenheit < Temperature

	def initialize(f)
		super(:f => f)
	end

end
