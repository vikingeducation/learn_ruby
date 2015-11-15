class Fixnum
	def in_words
		digits = self
		blocks = []
		less_than_20 = {
					 1 => 'one', 
					 2 => 'two', 
					 3 => 'three', 
					 4 => 'four', 
					 5 => 'five', 
					 6 => 'six', 
					 7 => 'seven', 
					 8 => 'eight', 
					 9 => 'nine', 
					 10 => 'ten',
					 11 => 'eleven',
					 12 => 'twelve',
					 13 => 'thirteen',
					 14 => 'fourteen',
					 15 => 'fifteen',
					 16 => 'sixteen',
					 17 => 'seventeen',
					 18 => 'eighteen',
					 19 => 'nineteen',
					}

		tens = {
				 2 => 'twenty',
			     3 => 'thirty',
			     4 => 'forty',
			     5 => 'fifty',
			     6 => 'sixty',
			     7 => 'seventy',
			     8 => 'eighty',
			     9 => 'ninety',
				}

		over_three_digits = {
							 1 => 'thousand',
							 2 => 'million',
							 3 => 'billion',
							 4 => 'trillion',
							}

		result = []
		result << 'zero' if digits == 0


		while digits / 1000 > 0
			blocks.unshift(digits % 1000)
			digits /= 1000
		end
		blocks.unshift(digits) if digits > 0


		while blocks.length > 0

			numbers = blocks.first
			numbers > 0 ? input_big_number = true : input_big_number = false

			while numbers > 0
				if numbers / 100 > 0
					result << less_than_20[numbers / 100] + " hundred"
					numbers = numbers % 100
				end

				if numbers / 10 > 1
					result << tens[numbers / 10]
					numbers = numbers % 10
				end

				if numbers > 0 && numbers < 20
					result << less_than_20[numbers]
					numbers = 0
				end
			end

			if input_big_number && blocks.length > 1
				result << over_three_digits[blocks.length - 1]
			end
			blocks.shift
		end
		
		result.join(' ')
	end
end