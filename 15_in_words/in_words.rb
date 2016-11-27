class Fixnum
	@@words = {
		90 => "ninety",
	    80 => "eighty",
	    70 => "seventy",
	    60 => "sixty",
	    50 => "fifty",
	    40 => "forty",
	    30 => "thirty",
	    20 => "twenty",
	    19 => "nineteen",
	    18 => "eighteen",
	    17 => "seventeen",
	    16 => "sixteen",
	    15 => "fifteen",
	    14 => "fourteen",
	    13 => "thirteen",
	    12 => "twelve",
	    11 => "eleven",
	    10 => "ten",
	    9 => "nine",
	    8 => "eight",
	    7 => "seven",
	    6 => "six",
	    5 => "five",
	    4 => "four",
	    3 => "three",
	    2 => "two",
	    1 => "one",
	    0 => "zero"
	}

	def in_words
		if @@words.include?(self)
			@@words[self]
		elsif self < 100
			tens = (self / 10) * 10
			ones = self % 10
			"#{tens.in_words} #{ones.in_words}"
		elsif self < 1000
			hundreds = (self / 100)
			remainder = self % 100
			result = "#{hundreds.in_words} hundred"
			result += " #{remainder.in_words}" unless remainder == 0
			result
		elsif self < 1_000_000
			thousands = (self / 1000)
			remainder = self % 1000
			result = "#{thousands.in_words} thousand"
			result += " #{remainder.in_words}" unless remainder == 0
			result
		elsif self < 1_000_000_000
			millions = (self / 1_000_000)
			remainder = self % 1_000_000
			result = "#{millions.in_words} million"
			result += " #{remainder.in_words}" unless remainder == 0
			result
		elsif self < 100_000_000_0000
			billions = (self / 1_000_000_000)
			remainder = self % 1000_000_000
			result = "#{billions.in_words} billion"
			result += " #{remainder.in_words}" unless remainder == 0
			result
		elsif self < 1_000_000_000_000_000
			trillions = (self / 1_000_000_000_000)
			remainder = self % 1_000_000_000_000
			result = "#{trillions.in_words} trillion"
			result += " #{remainder.in_words}" unless remainder == 0
			result
		end	
	end
end