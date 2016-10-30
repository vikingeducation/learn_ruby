class Fixnum
	def in_words
		case
		when self >= 1_000_000_000_000 then hundreds_and_up(12)
		when self >= 1_000_000_000 then hundreds_and_up(9) 	
		when self >= 1_000_000 then hundreds_and_up(6)
		when self >= 1000 then hundreds_and_up(3)
		when self >= 100 then hundreds_and_up(2)
		when self/10 > 1 #tens
			return tens(self/10) if self%10 == 0 
			return tens(self/10) + " " + ones(self%10)
		when self/10 == 1 # teens 
			return 'ten' if self == 10
			return 'eleven' if self == 11
			return 'twelve' if self == 12 
			return teen_beginnings(self%10) + 'teen'
		when self/10 == 0 # ones
			return ones(self)
		else 
			return "Sorry, too high!"
		end	
	end

	def descriptor(exp)
		return " trillion" if exp == 12
		return " billion" if exp == 9
		return " million" if exp == 6
		return " thousand" if exp == 3
		return " hundred"
	end

	def hundreds_and_up(exp)
		return (self / (10**exp) ).in_words + descriptor(exp) if self%(10**exp) == 0
		return (self/ (10**exp) ).in_words + descriptor(exp) + " " + (self%(10**exp)).in_words
	end

	def ones(n)
		return 'zero' if n == 0
		return 'one' if n == 1
		return 'two' if n == 2 
		return 'three' if n == 3
		return 'four' if n == 4
		return 'five' if n == 5
		return 'six' if n == 6
		return 'seven' if n == 7 
		return 'eight' if n == 8
		return 'nine' if n == 9
	end

	def teen_beginnings(n)
		return 'thir' if n == 3
		return 'four' if n == 4
		return 'fif' if n == 5
		return 'eigh' if n == 8
		return ones(n)
	end

	def tens(n)
		return 'twenty' if n == 2 
		return 'thirty' if n == 3
		return 'forty' if n == 4
		return 'fifty' if n == 5
		return 'sixty' if n == 6
		return 'seventy' if n == 7 
		return 'eighty' if n == 8
		return 'ninety' if n == 9
	end
end