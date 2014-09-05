# 15. In Words

module Inwords

	def in_words
		number = self

		return "zero" if number == 0

		ones 	= %w{one two three four five six seven eight nine}
		teens = %w{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
		tens 	= %w{twenty thirty forty fifty sixty seventy eighty ninety}

		num_output = ""

		if number > 999_999_999_999
			trillions = number / 1_000_000_000_000
			num_output << "#{trillions.in_words} trillion"

			number = number % 1_000_000_000_000
			num_output << " " if number > 0
		end

		if number > 999_999_999
			billions = number / 1_000_000_000
			num_output << "#{billions.in_words} billion"

			number = number % 1_000_000_000
			num_output << " " if number > 0
		end
		
		if number > 999_999
			millions = number / 1_000_000
			num_output << "#{millions.in_words} million"

			number = number % 1_000_000
			num_output << " " if number > 0
		end

		if number > 999
			thousands = number / 1000
			num_output << "#{thousands.in_words} thousand"

			number = number % 1000
			num_output << " " if number > 0
		end

		if number > 99
			hundreds = number / 100
			num_output << "#{ones[hundreds - 1]} hundred"

			number = number % 100
			num_output << " " if number > 0
		end

		if number.between?(20, 99)
			num_output << tens[(number/10) - 2]

			number = number % 10
			num_output << " " if number > 0
		end

		if number.between?(10, 19)
			num_output << teens[number%10]

		elsif number > 0
			num_output << ones[number - 1]
		end

		num_output

	end

end

class Fixnum
	include Inwords
end