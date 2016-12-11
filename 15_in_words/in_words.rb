class Fixnum
	def in_words
		if self < 0  # No negative numbers.
			return 'Please enter a number that isn\'t negative.'
		end
		if self == 0
			return 'zero'
		end
		numString = ''  # This is the string we will return.

		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']

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
		
		write = left/1000000000          # How many hundreds left to write out?
		left  = left - write*1000000000  # Subtract off those hundreds.

		if write > 0
			billions  = less_than_billions write
			numString = numString + billions + ' billion'
		
			if left > 0
					numString = numString + ' '
			end
		end



		write = left/1000000          # How many hundreds left to write out?
		left  = left - write*1000000  # Subtract off those hundreds.

		if write > 0
			millions  = less_than_millions write
			numString = numString + millions + ' million'
		
			if left > 0
					numString = numString + ' '
			end
		end
		write = left/1000          # How many hundreds left to write out?
		left  = left - write*1000  # Subtract off those hundreds.

		if write > 0
			thousands  = less_than_thousand write
			numString = numString + thousands + ' thousand'

			if left > 0
					numString = numString + ' '
			end
		end
		write = left/100          # How many hundreds left to write out?
		left  = left - write*100  # Subtract off those hundreds.

		if write > 0
			hundreds  = less_than_hundred write
			numString = numString + hundreds + ' hundred'
			if left > 0
					numString = numString + ' '
			end
		end

		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
					numString = numString + teenagers[left-1]
					left = 0
			else
					numString = numString + tensPlace[write-1]
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			numString = numString + onesPlace[write-1]
		end

		numString
	end

	def less_than_hundred (number)
		numString = ""
		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']
		left = number
		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
					numString = numString + teenagers[left-1]
					left = 0
			else
					numString = numString + tensPlace[write-1]
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			numString = numString + onesPlace[write-1]
		end

		numString
	end

	def less_than_thousand (number)
		numString = ""
		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']
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
		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
					numString = numString + teenagers[left-1]
					left = 0
			else
					numString = numString + tensPlace[write-1]
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			numString = numString + onesPlace[write-1]
		end

		numString
	end

	def less_than_millions (number)
		numString = ""
		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']
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
		write = left/100          # How many hundreds left to write out?
		left  = left - write*100  # Subtract off those hundreds.

		if write > 0
			hundreds  = less_than_hundred write
			numString = numString + hundreds + ' hundred'
			if left > 0
					numString = numString + ' '
			end
		end

		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
					numString = numString + teenagers[left-1]
					left = 0
			else
					numString = numString + tensPlace[write-1]
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			numString = numString + onesPlace[write-1]
		end

		numString
	end

	def less_than_billions (number)
		numString = ""
		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']
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
		write = left/1000          # How many hundreds left to write out?
		left  = left - write*1000  # Subtract off those hundreds.

		if write > 0
			thousands  = less_than_thousand write
			numString = numString + thousands + ' thousand'

			if left > 0
					numString = numString + ' '
			end
		end
		write = left/100          # How many hundreds left to write out?
		left  = left - write*100  # Subtract off those hundreds.

		if write > 0
			hundreds  = less_than_hundred write
			numString = numString + hundreds + ' hundred'
			if left > 0
					numString = numString + ' '
			end
		end

		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
					numString = numString + teenagers[left-1]
					left = 0
			else
					numString = numString + tensPlace[write-1]
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			numString = numString + onesPlace[write-1]
		end

		numString
	end

	def less_than_trillions (number)
		numString = ""
		onesPlace = ['one',     'two',       'three',    'four',     'five',
		        'six',     'seven',     'eight',    'nine']
		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
		        'sixty',   'seventy',   'eighty',   'ninety']
		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
		        'sixteen', 'seventeen', 'eighteen', 'nineteen']
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



		write = left/1000000          # How many hundreds left to write out?
		left  = left - write*1000000  # Subtract off those hundreds.

		if write > 0
			millions  = less_than_millions write
			numString = numString + millions + ' million'
		
			if left > 0
					numString = numString + ' '
			end
		end
		write = left/1000          # How many hundreds left to write out?
		left  = left - write*1000  # Subtract off those hundreds.

		if write > 0
			thousands  = less_than_thousand write
			numString = numString + thousands + ' thousand'

			if left > 0
					numString = numString + ' '
			end
		end
		write = left/100          # How many hundreds left to write out?
		left  = left - write*100  # Subtract off those hundreds.

		if write > 0
			hundreds  = less_than_hundred write
			numString = numString + hundreds + ' hundred'
			if left > 0
					numString = numString + ' '
			end
		end

		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) and (left > 0))
					numString = numString + teenagers[left-1]
					left = 0
			else
					numString = numString + tensPlace[write-1]
			end

			if left > 0
					numString = numString + ' '
			end
		end

		write = left  # How many ones left to write out?
		left  = 0     # Subtract off those ones.

		if write > 0
			numString = numString + onesPlace[write-1]
		end

		numString
	end
end