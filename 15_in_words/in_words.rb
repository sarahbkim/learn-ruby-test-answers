class Fixnum

def in_words
	n = self
	s = ''

	if n >= 1_000_000_000_000
		trils = n / 1_000_000_000_000
		n = n - (trils * 1_000_000_000_000)
		if n % 1_000_000_000_000 == 0
			return "#{translate(trils)} trillion"
		else
			s << "#{translate(trils)} trillion "
		end
	end

	if n >= 1_000_000_000
		bils = n / 1_000_000_000
		n = n - (bils * 1_000_000_000)
		if n % 1_000_000_000 == 0
			return "#{translate(bils)} billion"
		else
			s << "#{translate(bils)} billion "
		end
	end


	if n >= 1_000_000
		mils = n / 1_000_000
		n = n - (mils * 1_000_000)
		if n % 1_000_000 == 0
			return "#{translate(mils)} million"
		else
			s << "#{translate(mils)} million "
		end
	end


	if n >= 1_000
		thous = n / 1_000
		n = n - (thous * 1_000)
		if n % 1_000 == 0
			return "#{translate(thous)} thousand"
		else
			s << "#{translate(thous)} thousand "
		end
	end 

		s << translate(n) 

	return s

=begin

	
	if n >= 1_000_000
		millions = n / 1_000_000

		if n % 1_000_000 == 0
			s << "#{translate(millions)} million"
		else 
			rest = n - (millions * 1_000_000)
			s << "#{translate(millions)} million #{translate(rest)}"
		end

	end

	if n >= 1_000
		thousands = n / 1_000
		if n % 1_000 == 0
			s << "#{translate(thousands)} thousand"
		else 
			rest = n - (thousands * 1_000)
			s << "#{translate(thousands)} thousand #{translate(rest)}"
		end
	end

	if n < 1_000
		s << translate(n)
	end

	return s 
=end


end

def translate(n)
	if n >= 100
		translate_hundreds(n)
	else
		translate_under_hundred(n)
	end
end

def translate_hundreds(n)
	s = n / 100 #hundreds

	if n % 100 == 0
		"#{single_digits(s)} hundred"
	else
		"#{single_digits(s)} hundred #{translate_under_hundred(n % 100)}"
	end
end

def translate_under_hundred(n)
		if n < 10
			single_digits(n)
		elsif n >= 10 && n < 20
			teens(n)
		elsif n % 10 == 0 
			tens(n) 
		else 
			"#{tens(n - (n % 10))} #{single_digits(n % 10)}"
		end
end



def single_digits(n)
	case n
		when 0 
			'zero'
		when 1
			'one' 
		when 2
			'two'
		when 3
			'three'
		when 4
			'four'
		when 5
			'five'
		when 6
			'six'
		when 7
			'seven'
		when 8
			'eight'
		when 9
			'nine'
		end
end

def teens(n)
	case n
		when 10 
			'ten'
		when 11
			'eleven'
		when 12
			'twelve'
		when 13
			'thirteen'
		when 14
			'fourteen'
		when 15
			'fifteen'
		when 16
			'sixteen'
		when 17
			'seventeen'
		when 18
			'eighteen'
		when 19
			'nineteen'
	end
end

def tens(n) 
	case n
	when 20
		'twenty'
	when 30
		'thirty'
	when 40
		'forty'
	when 50
		'fifty'
	when 60
		'sixty'
	when 70
		'seventy'
	when 80
		'eighty'
	when 90 
		'ninety'
	end	
end

end
