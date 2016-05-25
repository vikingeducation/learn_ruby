
require 'pry'


module SingleDigits

	def zero_to_nine
		if self == 0
				"zero"
			elsif self == 1
				"one"
			elsif self == 2
				"two"
			elsif self == 3
				"three"
			elsif self == 4
				"four"
			elsif self == 5
				"five"
			elsif self == 6
				"six"
			elsif self == 7
				"seven"
			elsif self == 8
				"eight"
			elsif self == 9
				"nine"
		end
	end

	def ten_to_twelve
		if self == 10
			"ten"
		elsif self == 11
			"eleven"
		else
			"twelve"
		end
	end



	def teens
		if self == 13
			"thirteen"
			elsif self == 14
				"fourteen"
			elsif self == 15
				"fifteen"
			elsif self == 16
				"sixteen"
			elsif self == 17
				"seventeen"
			elsif self == 18
				"eighteen"
			elsif self == 19
				"nineteen"
		end
	end


	def tens

		if self == 20
			"twenty"
		elsif self == 30
			"thirty"
		elsif self == 40
			"forty"
		elsif self == 50
			"fifty"
		elsif self == 60
			"sixty"
		elsif self == 70
			"seventy"
		elsif self == 80
			"eighty"
		elsif self == 90
			"ninety"
		end
	end




	def hundreds
		if self == 100
			"one hundred"
		elsif self == 200
			"two hundred"
		elsif self == 300
			"three hundred"
		elsif self == 400
			"four hundred"
		elsif self == 500
			"five hundred"
		elsif self == 600
			"six hundred"
		elsif self == 700
			"seven hundred"
		elsif self == 800
			"eight hundred"
		elsif self == 900
			"nine hundred"
		end

	end


	def two_digit_array

				array = self
				new_array = []


				if ( 10..12 ) === array
					return array.ten_to_twelve
				elsif ( 13..19 ) === array
					return array.teens
				elsif array.to_s.chars[ 1 ] == "0"
					return array.tens
				else

					new_array << array.to_s.chars[ 0 ] + "0"
					new_array << array.to_s.chars[ 1 ]


					new_array.map { | i |
						if i.size == 2
							i.to_i.tens
						elsif (10..12) === i.to_i
							i.to_i.ten_to_twelve
						elsif (0..9) === i.to_i
							i.to_i.zero_to_nine
						end
						}.join(" ")
				end

	end #/.two_digit_array


	def three_digit_array

				array = self.to_s.chars
				new_array = []

				new_array << array[0] + "00"
				new_array << array[1] + array[2]
				new_array.map { | i |

					if i.size == 3
						i.to_i.hundreds
					elsif i.size == 2 && i != "00"
						i.to_i.two_digit_array
					end
					}.join(" ").strip

	end


	def thousands

		" thousand"

	end

	def millions

		" million"

	end


	def billions

		" billion"

	end

end #/.SingleDigits Module



class Fixnum

	include SingleDigits



		#num_array.map { |i| i.to_i }

		def in_words

				num_array = []
				digits_in_number = self.to_s.chars


			if (0..9) === self
				self.zero_to_nine

			elsif (10..12) === self
				self.ten_to_twelve

			elsif (13..19) === self
				self.teens
			elsif digits_in_number.count == 2 && digits_in_number[1].to_i == 0
				self.tens
			elsif digits_in_number.count == 2

				self.two_digit_array

			elsif digits_in_number.count == 3

				self.three_digit_array

			# checking for thousands but less than 1 million
			elsif digits_in_number.count > 3 && digits_in_number.count < 7

				if digits_in_number.count == 4
					num_array << digits_in_number[0]
					num_array << digits_in_number[1] + digits_in_number[2] + digits_in_number[3]



					num_array.map { | i |

						if i.size == 1
							i.to_i.zero_to_nine + thousands
						end
						}.join(" ").strip
				elsif digits_in_number.count == 5

					num_array << digits_in_number[0] + digits_in_number[1]
					num_array << digits_in_number[2] + digits_in_number[3] + digits_in_number[4]

					num_array.map { | i |
						if i.size == 2
							i.to_i.two_digit_array + thousands
						else
							i.to_i.three_digit_array
						end
					}.join(" ")


				end #/.count == 5

			elsif digits_in_number.count > 7 && digits_in_number.count < 9

				# if 10 million or higher
				if digits_in_number.count == 8
					num_array << digits_in_number[0] + digits_in_number[1]
				end

			end #/first if




		end






end