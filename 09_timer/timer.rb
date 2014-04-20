class Timer
	def initialize
		@time = 0
	end

	def seconds
		@time 
	end

	def seconds=(x)
		@time = x
	end 

	def time_string
		secs = @time % 60 
		mins = 0 
		hrs = 0 

		if @time > 0
			mins = (@time / 60 ) % 60 
			hrs = @time / 60 / 60 
		end 	

		return "#{padded(hrs)}:#{padded(mins)}:#{padded(secs)}"
	end

	def padded(i)
		i.to_s.length == 1 ? i = "0" + i.to_s : i = i.to_s 
	end

	
end