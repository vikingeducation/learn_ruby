class Fixnum
	def in_words
		ones = ''
		tens = ''
		hundreds = ''
		thousands = ''
		ten_thousands = ''
		if self < 10
			ones = 'zero' if self == 0
			ones = 'one' if self == 1
			ones = 'two' if self == 2
			ones = 'three'	if self == 3
			ones = 'four' if self == 4
			ones = 'five' if self == 5
			ones = 'six' if self == 6
			ones = 'seven' if self == 7
			ones = 'eight' if self == 8
			ones = 'nine' if self == 9
			return ones
		elsif self < 13
			return 'ten' if self == 10
			return 'eleven' if self == 11
			return 'twelve' if self == 12
		elsif self < 20
			return 'thirteen' if self == 13
			return 'fourteen' if self == 14
			return 'fifteen' if self == 15
			return 'sixteen' if self == 16
			return 'seventeen' if self == 17
			return 'eighteen' if self == 18
			return 'nineteen' if self == 19
		else
			str = self.to_s.split('').map! {|x| x.to_i}

			tens = 'twenty' if str[-2] == 2
			tens = 'thirty' if str[-2] == 3
			tens = 'forty' if str[-2] == 4
			tens = 'fifty' if str[-2] == 5
			tens = 'sixty' if str[-2] == 6
			tens = 'seventy' if str[-2] == 7
			tens = 'eighty' if str[-2] == 8
			tens = 'ninety' if str[-2] == 9

			if str[-2] == 1    #if tens digit is 1, ones are teens and tens is nil
				#binding.pry
				ones = 'eleven' if str[-1] == 1
				ones = 'twelve' if str[-1] == 2
				ones = 'thirteen' if str[-1] == 3
				ones = 'fourteen'	if str[-1] == 4
				ones = 'fifteen' if str[-1] == 5
				ones = 'sixteen' if str[-1] == 6
				ones = 'seventeen' if str[-1] == 7
				ones = 'eighteen' if str[-1] == 8
				ones = 'nineteen' if str[-1] == 9
				tens = ' '  
			else
				ones = '' if str[-1] == 0
				ones = 'one' if str[-1] == 1
				ones = 'two' if str[-1] == 2
				ones = 'three'	if str[-1] == 3
				ones = 'four' if str[-1] == 4
				ones = 'five' if str[-1] == 5
				ones = 'six' if str[-1] == 6
				ones = 'seven' if str[-1] == 7
				ones = 'eight' if str[-1] == 8
				ones = 'nine' if str[-1] == 9
			end

			hundreds = '' unless str[-3]
			hundreds = 'one' if str[-3] == 1
			hundreds = 'two' if str[-3] == 2	
			hundreds = 'three' if str[-3] == 3
			hundreds = 'four' if str[-3] == 4	
			hundreds = 'five' if str[-3] == 5
			hundreds = 'six' if str[-3] == 6	
			hundreds = 'seven' if str[-3] == 7
			hundreds = 'eight' if str[-3] == 8	
			hundreds = 'nine' if str[-3] == 9

			thousands = '' unless str[-4]
			thousands = 'one' if str[-4] == 1
			thousands = 'two' if str[-4] == 2	
			thousands = 'three' if str[-4] == 3
			thousands = 'four' if str[-4] == 4	
			thousands = 'five' if str[-4] == 5
			thousands = 'six' if str[-4] == 6	
			thousands = 'seven' if str[-4] == 7
			thousands = 'eight' if str[-4] == 8	
			thousands = 'nine' if str[-4] == 9

			ten_thousands = '' unless str[-5]
			ten_thousands = 'one' if str[-5] == 1
			ten_thousands = 'twenty' if str[-5] == 2	
			ten_thousands = 'thirty' if str[-5] == 3
			ten_thousands = 'forty' if str[-5] == 4	
			ten_thousands = 'fifty' if str[-5] == 5
			ten_thousands = 'sixty' if str[-5] == 6	
			ten_thousands = 'seventy' if str[-5] == 7
			ten_thousands = 'eighty' if str[-5] == 8	
			ten_thousands = 'ninety' if str[-5] == 9

			thousands = thousands << ' thousand' unless thousands.empty?

			ten_thousands + "#{" " unless ten_thousands.empty? || thousands.empty?}" + thousands + "#{" " unless thousands.empty? || hundreds.empty?}#{hundreds + " hundred" unless hundreds.empty?}#{" " unless hundreds.empty? || tens.empty? || tens == ' '}#{(tens) unless tens.empty?}#{" " unless tens.empty? || ones.empty? || tens == ' '}#{ones unless ones.empty?}"
		end
	end
end
