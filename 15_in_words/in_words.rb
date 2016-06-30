class Fixnum
	def in_words

		if self == 0
			return 'zero'
		end

		numString = '' 

		onesPlace = ['one',     'two',       'three',    'four',     'five', 'six',     'seven',     'eight',    'nine']

		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty', 'sixty',   'seventy',   'eighty',   'ninety']

		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',	'sixteen', 'seventeen', 'eighteen', 'nineteen']

		left  = self

		#copy the below code but adjusted for ten thousands (don't forget teenagers!)
		#binding.pry

		write = left/1_000_000_000_000 #write = 12
		left = left - write * 1_000_000_000_000 #left = 0

		if write > 0 #yes
			#if ((write > 10) && (write < 20)) #yes #not necessary?
			trillions = write.in_words #12 gets run through the system (output as 'twelve')
			numString = numString + trillions + ' trillion' 

			if left > 0
				numString = numString + ' '
			end
		end

		write = left/1_000_000_000 #write = 12
		left = left - write * 1_000_000_000 #left = 0

		if write > 0 #yes
			#if ((write > 10) && (write < 20)) #yes #not necessary?
			billions = write.in_words #12 gets run through the system (output as 'twelve')
			numString = numString + billions + ' billion' 

			if left > 0

				numString = numString + ' '
			end
		end

		write = left/1_000_000 #write = 12
		left = left - write * 1_000_000 #left = 0

		if write > 0 #yes
			#if ((write > 10) && (write < 20)) #yes #not necessary?
			millions = write.in_words #12 gets run through the system (output as 'twelve')
			numString = numString + millions + ' million' 

			if left > 0

				numString = numString + ' '
			end
		end

		#say left = 12_000
		write = left/1000 #write = 12
		left = left - write * 1000 #left = 0

		if write > 0 #yes
			#if ((write > 10) && (write < 20)) #yes #not necessary?
			thousands = write.in_words #12 gets run through the system (output as 'twelve')
			numString = numString + thousands + ' thousand' 

			if left > 0

				numString = numString + ' '
			end
		end

		write = left/100          # How many hundreds left to write out?
		left  = left - write * 100  # Subtract off those hundreds.

		if write > 0
			
			hundreds = onesPlace[write-1]

			numString = numString + hundreds + ' hundred'


			if left > 0

				numString = numString + ' '
			end
		end

		write = left/10          # How many tens left to write out?
		left  = left - write*10  # Subtract off those tens.

		if write > 0
			if ((write == 1) && (left > 0))

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
