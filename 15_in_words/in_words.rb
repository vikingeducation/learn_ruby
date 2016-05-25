
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
		else
			"one hundred"
		end
	end


end



class Fixnum

	include SingleDigits



		#num_array.map { |i| i.to_i }

		def in_words

				num_array = []
				word_array = []

			if (0..9) === self
				self.zero_to_nine

			elsif (10..12) === self
				self.ten_to_twelve

			elsif (13..19) === self
				self.teens
			elsif self.to_s.chars.count == 2 && self.to_s.chars[1].to_i == 0
				self.tens
			elsif self.to_s.chars.count == 2
				num_array << self.to_s.chars[0] + "0"
				num_array << self.to_s.chars[1]
				num_array.map { | i | 
					if i.size == 2
						i.to_i.tens
					else
						i.to_i.zero_to_nine
					end
					}.join(" ")

			end




		end






end