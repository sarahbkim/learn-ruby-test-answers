class Dictionary
	
	def initialize
		@entries = {}
	end

	def entries
		@entries
	end 

	def add(x)
		if x.is_a?(String)
			@entries[x] = nil
		else 
			x.each do |k, v|
			@entries[k] = v
			end
		end
	end 

	def keywords
		@entries.keys.sort

	end 

	def include?(x)
		@entries.keys.index(x) != nil ? true : false 
	end

	def find(x)
		val = {}
		@entries.each do |k, v|
			if /#{x}/.match(k)
				val[k] = @entries[k]
			end 
		end 

		return val 

	end

	def printable
		output = ''
		@entries.sort.each do |k, v|
			output += %Q{[#{k}] "#{v}"\n}
		end
		return output
	end


end
