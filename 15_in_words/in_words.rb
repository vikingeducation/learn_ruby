class Fixnum

	def in_words

		# Automatically return on zero
		return "zero" if self == 0

		# Initialize array that will collect each individual word, to control spacing
		phrase = []

		# Initialize parameters that will keep track of numbers, from ones to trillions
		trillions = 0
		billions = 0
		millions = 0
		thousands = 0
		hundreds = 0
		tens = 0
		ones = 0

		# Initialize number that will be used to determine "ones" to "trillions"
		num = self

		# Count number of trillions
		while num >= 1000000000000
			trillions += 1
			num -= 1000000000000
		end

		# Add words for millions
		if trillions > 0 # from 1 to 999 
			phrase << trillions.in_words # put number from 1 to 999 into in_words recursively
			phrase << "trillion" 
			phrase << num.in_words if num != 0 # add words for numbers less than 1 trillion
			return phrase.join(" ") # combine all words in array, adding one space in between
		end	

		# Same logic for trillions applies to billions, millions, thousands, and hundreds!

		# Count number of billions
		while num >= 1000000000
			billions += 1
			num -= 1000000000
		end

		# Add words for billions
		if billions > 0
			phrase << billions.in_words
			phrase << "billion"
			phrase << num.in_words if num != 0
			return phrase.join(" ")
		end	

		# Count number of millions
		while num >= 1000000
			millions += 1
			num -= 1000000
		end

		# Add words for millions
		if millions > 0
			phrase << millions.in_words
			phrase << "million"
			phrase << num.in_words if num != 0
			return phrase.join(" ")
		end	

		# Count number of thousands
		while num >= 1000
			thousands += 1
			num -= 1000
		end

		# Add words for thousands
		if thousands > 0
			phrase << thousands.in_words
			phrase << "thousand"
			phrase << num.in_words if num != 0
			return phrase.join(" ")
		end		

		# Count number of hundreds
		while num >= 100
			hundreds += 1
			num -= 100
		end

		# Add words for hundreds
		if hundreds > 0
			phrase << hundreds.in_words
			phrase << "hundred"
			phrase << num.in_words if num != 0
			return phrase.join(" ")
		end

		# Count number of tens
		while num >= 10
			tens += 1
			num -= 10
		end

		# Count number of ones
		while num >= 1
			ones += 1
			num -= 1
		end

		# Add words for tens & ones
		if tens > 1 && ones > 0 # from 21 to 99
			return (tens*10).in_words + " " + ones.in_words
		end

		# Explicit values 1 - every 10 numbers from 20 to 90
		# Need "return" keywords since they're not the last statement in this method
		if self < 100 && self % 10 == 0 && self != 10
			case self
			when 20
				return "twenty"
			when 30
				return "thirty"
			when 40
				return "forty"
			when 50
				return "fifty"
			when 60
				return "sixty"
			when 70
				return "seventy"
			when 80
				return "eighty"
			when 90
				return "ninety"
			else
				raise "Error - in_words, 20 to 90"
			end
		end

		# Explicit values 2 - ever number from 1 to 19
		# No "return" keywords needed - last statement in array
		if self < 20
			case self
			when 1
				"one"
			when 2
				"two"
			when 3
				"three"
			when 4
				"four"
			when 5
				"five"
			when 6
				"six"
			when 7
				"seven"
			when 8
				"eight"
			when 9 
				"nine"
			when 10
				"ten"
			when 11
				"eleven"
			when 12
				"twelve"
			when 13
				"thirteen"
			when 14
				"fourteen"
			when 15
				"fifteen"
			when 16
				"sixteen"
			when 17
				"seventeen"
			when 18
				"eighteen"
			when 19
				"nineteen"
			else
				raise "Error - in_words, 1 to 19"
			end
		end

	end

end

