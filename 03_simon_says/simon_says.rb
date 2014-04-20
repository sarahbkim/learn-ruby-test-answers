def echo(words)
	return words
end

def shout(words)
	return words.upcase
end

def repeat(words,n=2)
	return ([words] * n).join(' ')
end

def start_of_word(word, i)
	return word[0..i-1]
end

def first_word(phrase)
	return phrase.split(' ')[0]
end

LITTLE_WORDS = ['a', 'the', 'and', 'over']

def titleize(phrase)
	words = phrase.split(' ')
	words.each do | word | 
		if LITTLE_WORDS.index(word) != nil && words.index(word) > 0 
			word 
		else 
			word.capitalize!
		end
	end
	return words.join(' ')
end

