class Fixnum

	def in_words
		numbers_singles = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve"}
		numbers_teens = {3 => "thir", 4 => "four", 5 => "fif", 6 => "six", 7 => "seven", 8 => "eigh", 9 => "nine"}
		numbers_tens = {2 => "twen", 3 => "thir", 4 => "for", 5 => "fif", 6 => "six", 7 => "seven", 8 => "eigh", 9 => "nine"}

		number = self
		result = ""
		rest = 0


# Under Twenties
		if number < 20
			if number < 13
				result += numbers_singles[number]
			elsif number < 20
				result += numbers_teens[number-10] + "teen"
			end

# Under Hundred
		elsif number < 100
			rest = number - (number/10 * 10)
			number /= 10
			
			result += numbers_tens[number] + "ty"

			if rest > 0
				result += " " + rest.in_words
			end

# Under Thousand
		elsif number < 1000
			rest = number - (number/100 * 100)
			number /= 100
			result += number.in_words + " hundred"

			if rest > 0
				result += " " + rest.in_words
			end

# Under Million
		elsif number < 1000000
			rest = number - (number/1000 * 1000)
			number /= 1000
			result += number.in_words + " thousand"

			if rest > 0
				result += " " + rest.in_words
			end

# Under Billion
		elsif number < 1000000000
			rest = number - (number/1000000 * 1000000)
			number /= 1000000
			result += number.in_words + " million"

			if rest > 0
				result += " " + rest.in_words
			end

# Under Trillion
		elsif number < 1000000000000
			rest = number - (number/1000000000 * 1000000000)
			number /= 1000000000
			result += number.in_words + " billion"

			if rest > 0
				result += " " + rest.in_words
			end

# Over Trillion
		elsif number >= 1000000000000
			rest = number - (number/1000000000000 * 1000000000000)
			number /= 1000000000000
			result += number.in_words + " trillion"

			if rest > 0
				result += " " + rest.in_words
			end
		end
		result
	end
end