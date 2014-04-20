

def translate(phrase)
	words = phrase.split(' ')
	
	translated = []

	for word in words do 
		phonemes = ['sch', 'squ', 'qu', 'ch']	
		letters = word.split('')
		cons = 0
		substr = ''

		for phe in phonemes do
			if /#{phe}/ =~ word
				word = word.sub(/#{phe}/, '')
				substr = "#{phe}"
			end
		end
		puts substr 
		puts word 
		if vowel(word[0])
			translated.push(word + substr + 'ay')
		else  
			for l in letters do
				if !vowel(l)
					cons += 1
				else 
					break 
				end 
			end
			translated.push(word[cons..-1] + word[0..cons-1] + 'ay')
		end
	end 

	return translated.join(' ')
end


def vowel(l)
	if '/aeiou/'.match(l)
		true
	else 
		false
	end
end
