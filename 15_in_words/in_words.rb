require 'pry'

class Fixnum
	@@words_to_19 = [nil,"one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
	@@tens_array = [nil,nil,"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
	@@hundreds_array = [nil,nil,"thousand","million","billion","trillion"]

	def in_words
		
		if self == 0
			return "zero"
		end

		@@words = []
		number = self

		# trying to split the number into groups of three
		number_array = number.to_s.reverse.split('')
		number_array = number_array.map do |x|
			x.to_i
		end
		number_array = number_array.each_slice(3).to_a
		number_array.reverse!

		# then get the number of pairs of three
		hundreds_count = number_array.length
		
		number_array.each_with_index do |number,index|
			return_three_digit_number(number.join('').reverse.to_i,@@hundreds_array[hundreds_count-index])
		end
		
		
		@@words.delete_if{|word| word.nil? }
		@@words.join(" ").chomp(" ")

	end

	# return the word version of a two or one digit number
	def return_two_digit_number(num,suffix=nil)
		if num < 20
			@@words << @@words_to_19[num]
			unless suffix.nil? || num == 0 
				@@words << suffix
			end
		else
			@@words << @@tens_array[num/10]
			@@words << @@words_to_19[num%10]
			unless suffix.nil? || num == 0
				@@words << suffix
			end
		end
	end

	# return word version of a three digit number with proper suffix
	def return_three_digit_number(num,suffix)
		if num >= 100 && num != 0
			hundreds = num/100
			num_less_hundreds = num - (hundreds * 100)
			@@words << @@words_to_19[hundreds]
			@@words << "hundred"
			if num%100 == 0
				return_two_digit_number(num,suffix)
			else
				return_two_digit_number(num_less_hundreds,suffix)
			end
		else
			return_two_digit_number(num,suffix)
		end
	end
end