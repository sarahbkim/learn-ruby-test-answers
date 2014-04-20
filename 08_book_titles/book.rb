class Book
	

	#setter method for titles 
	def title=(book)
		@book = capitalize(book) 
		
	end 

	#getter method for titles
	def title
		@book
	end

	def capitalize(title) 
		conjunctions = ['and', 'or', 'of', 'in', 'the', 'a', 'an']
		words = title.split(" ")

		for word in words do
			if words.index(word) == 0
				word.capitalize!
			elsif conjunctions.index(word) == nil
				word.capitalize! 
			else 
				word
			end 
		end 

		words.join(" ")
	end


end 
