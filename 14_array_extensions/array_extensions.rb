class Array

	def sum
		total = 0 
		if empty? 
			total 
		else each do |i|
			total += i
			end 
		return total 
		end
	end

	def square 
		if empty? 
			return []
		else map {|i| i ** 2 }
		end
	end

	def square!
		if empty? 
			return []
		else map! {|i| i ** 2 }
		end 
	end


end 
