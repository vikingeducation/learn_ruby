# in_words.rb


require 'pry'


module Digits



	def check_0_thru_tens

		if (0..9) === self

			self.zero_to_nine

		elsif (10..12) === self

			self.ten_to_twelve

		elsif (13..19) === self

			self.teens

		elsif (20..99) === self && self.to_s.chars[1] == "0"

			self.tens

		elsif (21..99) === self && self.to_s.chars[1] != "0"

			self.two_digit_array

		elsif (100..999) === self

			self.three_digit_array

		end

	end




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







end #/.Digits Module



module Append


	def thousands
		" thousand"
	end

	def millions
		"million"
	end

	def billions
		" billion"
	end

	def trillions
		" trillion "
	end

end


module ReadTwoThreeArray

	def two_digit_array

				array = self
				new_array = []

				# check if we don't need to combine words to create a number like sixty six
				if ( 10..12 ) === array

					return array.ten_to_twelve

				elsif ( 13..19 ) === array

					return array.teens

				elsif array.to_s.chars[ 1 ] == "0"

					return array.tens

				else

					# this is created to divide the numbers into two separate elements we can then call on to combine two words for the number -- 76 => [70, 6] => ["seventy", "six"]
					new_array << array.to_s.chars[ 0 ] + "0"
					new_array << array.to_s.chars[ 1 ]


					new_array.map { | i |
						if i.size == 2
							i.to_i.tens
						elsif (0..19) === i.to_i
							i.to_i.check_0_thru_tens
						end
						}.join(" ")
				end

	end #/.two_digit_array



	# for calling out a hundred number - combined with two digit array
	def three_digit_array

				array = self.to_s.chars
				new_array = []

				# no zeroes means we need to break up the number into sections -- "345"
				if array != "000"

					# this pulls the first digit and appends 00 to be read by the hundred method -- "3" + "00"
					new_array << array[0] + "00"

					# this takes the last two digits to be passed to two digit array method -- "45"
					new_array << array[1] + array[2]
					new_array.map { | i |

						if i.size == 3

							# evaluates the hundred
							i.to_i.hundreds

						elsif i.size == 2 && i != "00"

							# evaluates the two digit number
							i.to_i.two_digit_array

						end
						}.join(" ").strip

				end

	end #/.three digit array


end




class Fixnum

	include Digits, Append, ReadTwoThreeArray



		def in_words

				num_array = []
				digits_array = self.to_s.chars


			if (0..999) === self

				self.check_0_thru_tens

			# checking for thousands but less than 1 million
			elsif digits_array.count > 3 && digits_array.count < 7

				# if there are 4 numbers (thousand) we break it up into two values to evaluate separately
				if digits_array.count == 4


					# this stores the single digit to be followed by 'thousand'
					num_array << digits_array[0]

					# 3 digits are store to be sent to the 3 digit array
					num_array << digits_array[1] + digits_array[2] + digits_array[3]


					# passes the test for 1-9 thousand
					num_array.map { | i |

						if i.size == 1
							i.to_i.zero_to_nine + thousands
						end
						}.join(" ").strip


				# if 10 thous or higher
				elsif digits_array.count == 5

					# two digits stored first to be evaluated
					num_array << digits_array[0] + digits_array[1]

					# then next 3 digits stored for evaluation
					num_array << digits_array[2] + digits_array[3] + digits_array[4]

					# iterate through the num array to create the words
					num_array.map { | i |
						if i.size == 2
							i.to_i.check_0_thru_tens + thousands
						else
							i.to_i.check_0_thru_tens
						end
					}.join(" ")

				end #/.count == 4 and 5



			# evaluates the millions checking for x num of digits
			elsif digits_array.count > 7 && digits_array.count < 9

				# if 10 million or higher
				if digits_array.count == 8

					# populate 10+ million
					num_array << digits_array[ 0 ] + digits_array[ 1 ]

					# populate ### thousand
					num_array << digits_array[ 2 ] + digits_array[ 3 ] + digits_array[ 4 ]

					# populate ### hundred
					num_array << digits_array[ 5 ] + digits_array[ 6 ] + digits_array[ 7 ]


					num_array.each_with_index.map { | i , index |

						if i.size == 2

							i.to_i.check_0_thru_tens

						elsif i == "000" && index == 1

							 millions

						elsif index == 2

							i.to_i.check_0_thru_tens

						end}.join(" ")


				end#/.millions


			# check digits for billions
			elsif digits_array.count > 9 && digits_array.count < 12

				if digits_array.count == 10

					# populate # billion
					num_array << digits_array[0]

					# populate ### million
					num_array << digits_array[1] + digits_array[2] + digits_array[3]

					# populate ### thousand
					num_array << digits_array[4] + digits_array[5] + digits_array[6]

					# populate ### hundred
					num_array << digits_array[7] + digits_array[8] + digits_array[9]

					# read the numbers in the array
					num_array.each_with_index.map { | i , index |
						if index == 0
							i.to_i.check_0_thru_tens + billions
						elsif index == 1
							i.to_i.check_0_thru_tens + " " + millions
						elsif index == 2
							i.to_i.check_0_thru_tens + thousands
						elsif index == 3
							i.to_i.check_0_thru_tens
						end}.join(" ")

				end

			# read trillions
			elsif digits_array.count > 12


				if digits_array.count == 13

					# populate # trillion
					num_array << digits_array[0]


					# populate ### billion
					num_array << digits_array[1] + digits_array[2] + digits_array[3]

					# populate ### million
					num_array << digits_array[4] + digits_array[5] + digits_array[6]

					# populate ### thousand
					num_array << digits_array[7] + digits_array[8] + digits_array[9]

					# populate ### hundred
					num_array << digits_array[10] + digits_array[11] + digits_array[12]


					# read the numbers in the array based on index to append the correct trillions/billions etc
					num_array.each_with_index.map { | i , index |

						if index == 0

							i.to_i.check_0_thru_tens + trillions

						elsif index == 1 && i != "000"

							i.to_i.check_0_thru_tens + billions + " "

						elsif index == 2 && i != "000"

							i.to_i.check_0_thru_tens + " " + millions + " "

						elsif index == 3 && i != "000"

							i.to_i.check_0_thru_tens + thousands + " "

						elsif index == 4 && i != "000"

							i.to_i.check_0_thru_tens

						end}.join("").strip

				end
			end #/first if




		end






end