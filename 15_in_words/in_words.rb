class Fixnum

	
    def spit_out_string (index, which)
		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']
		if which == 1
			onesPlace[index]
		elsif which == 2
			tensPlace[index]
		else
			teenagers[index]
		end
    end

	def in_words
		if self < 0  # No negative numbers.
			return 'Please enter a number that isn\'t negative.'
		end
		if self == 0
			return 'zero'
		end
		numString = ''  # This is the string we will return.

		left  = self

		write = left/1000000000000          # How many hundreds left to write out?
		left  = left - write*1000000000000  # Subtract off those hundreds.

		if write > 0
			trillions  = less_than_trillions write
			numString = numString + trillions + ' trillion'
		
			if left > 0
					numString = numString + ' '
			end
		end
		numString = numString + less_than_trillions(left)

		numString
	end

	def less_than_10 (number)
		left = number
		numString = ""
		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
				index = left-1
				numString = numString + spit_out_string(index, 3)
				left = 0
			else
				index = write-1	
				numString = numString + spit_out_string(index, 2)
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			index = write-1
			numString = numString + spit_out_string(index, 1)
		end

		numString
	end

	def less_than_hundred (number)
		numString = ""
		numString = numString + less_than_10(number)
		numString
	end

	def less_than_thousand (number)
		numString = ""
		left = number
		write = left/100          # How many hundreds left to write out?
		left  = left - write*100  # Subtract off those hundreds.

		if write > 0
			hundreds  = less_than_hundred write
			numString = numString + hundreds + ' hundred'
			if left > 0
					numString = numString + ' '
			end
		end
		numString = numString + less_than_10(left)

		numString
	end

	def less_than_millions (number)
		numString = ""
		left = number
		write = left/1000          # How many hundreds left to write out?
		left  = left - write*1000  # Subtract off those hundreds.

		if write > 0
			thousands  = less_than_thousand write
			numString = numString + thousands + ' thousand'

			if left > 0
					numString = numString + ' '
			end
		end
		numString = numString + less_than_thousand(left)

		numString
	end

	def less_than_billions (number)
		numString = ""
		left = number
		write = left/1000000          # How many hundreds left to write out?
		left  = left - write*1000000  # Subtract off those hundreds.

		if write > 0
			millions  = less_than_millions write
			numString = numString + millions + ' million'
		
			if left > 0
					numString = numString + ' '
			end
		end

		numString = numString + less_than_millions(left)

		numString
	end

	def less_than_trillions (number)
		numString = ""
		
		left = number
		write = left/1000000000          # How many hundreds left to write out?
		left  = left - write*1000000000  # Subtract off those hundreds.

		if write > 0
			billions  = less_than_billions write
			numString = numString + billions + ' billion'
		
			if left > 0
					numString = numString + ' '
			end
		end

		numString = numString + less_than_billions(left)

		numString
	end
end