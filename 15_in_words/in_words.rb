class Fixnum
	
	def in_words(num = self)
		return "zero" if num == 0
		ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
		tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
		teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

		num_string = ""

		left = num
		
		write = left/1000000000000
		left -= write * 1000000000000
		if write > 0
			trillions = in_words(write)
			num_string += trillions + " "+ "trillion" + " "
		end

		write = left/1000000000
		left -= write * 1000000000
		if write > 0
			billions = in_words(write)
			num_string += billions + " "+ "billion" + " "
		end

		write = left/1000000
		left -= write * 1000000
		if write > 0
			millions = in_words(write)
			num_string += millions + " "+ "million" + " "
		end
		
		write = left/1000
		left -= write * 1000
		if write > 0
			thousands = in_words(write)
			num_string += thousands + " "+ "thousand" + " "
		end

		write = left/100
		left -= write * 100
		if write > 0
			hundreds = in_words(write)
			num_string += hundreds + " "+ "hundred" + " "
		end

		write = left/10
		left -= write * 10

		if write == 1 and left > 0
			num_string += teens[left - 1] + " "
			left -= left
		elsif write > 0
			num_string += tens[write - 1] + " "
		end

		write = left
		left -= write

		if write > 0
			num_string += ones[write - 1] + " "
		end

		num_string.strip

	end

end
