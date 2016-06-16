class Fixnum

	def in_words
		num = self.to_s
		num_words = ""

		return "0" if num == "0"
		
		counter = 0	

		while counter < num.length
			if counter % 3 == 0
				num_words += hundreds(num[counter])
			elsif counter % 3 == 2
				crunch = num[counter..counter+1]
				if crunch.to_i > 19
					num_words += tens(crunch[0])
				elsif (crunch.to_i < 20) && (crunch.to_i > 9)
					num_words += teens(crunch)
					counter++
				end
			elsif counter % 3 == 1
				case counter
				when 1
					num_words += ones(num[counter])
				when 4
					num_words += thousands(num[counter])
				when 7
					num_words += millions(num[counter])
				when 10
					num_words += billions(num[counter])
				when 13
					num_words += trillions(num[counter])
				end
			end
			counter++
		end
		
		num_words
	end

	def ones(one_spot)
		case one_spot
		when "1"
			return "one"
		when "2"
			return "two"
		when "3"
			return "three"
		when "4"
			return "four"
		when "5"
			return "five"
		when "6"
			return "six"
		when "7"
			return "seven"
		when "8"
			return "eight"
		when "9"
			return "nine"
		end
	end

	def teens(ten_spot)
		case ten_spot
		when "10"
			return 'ten'
		when "11"
			return 'eleven'
		when "12"
			return 'twelve'
		when "13"
			return 'thirteen'
		when "14"
			return 'fourteen'
		when "15"
			return 'fifteen'
		when "16"
			return 'sixteen'
		when "17"
			return 'seventeen'
		when "18"
			return 'eighteen'
		when "19"
			return 'nineteen'
		end
	end

	def tens(ten_spot)
		case ten_spot
		when "2"
			return 'twenty'
		when "3"
			return 'thirty'
		when "4"
			return 'forty'
		when "5"
			return 'fifty'
		when "6"
			return 'sixty'
		when "7"
			return 'seventy'
		when "8"
			return 'eighty'
		when "9"
			return 'ninety'
		end
	end

	def hundreds(hundred_spot)
		num_digit = ones(hundred_spot)
		num_output = "#{num_digit} hundred"
	end

	def thousands(thousand_spot)
		num_digit = ones(thousand_spot)
		num_output = "#{num_digit} thousand"
	end

end


puts 1.in_words
