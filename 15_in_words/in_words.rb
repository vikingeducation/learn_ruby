class Fixnum

	def in_words(int = self)
	  number_to_word = {
	  	1000000000000 => "trillion",
	  	1000000000 => "billion",
	  	1000000 => "million",
	  	1000 => "thousand",
	    100 => "hundred",
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
	  }

	  number_to_word.each do |num, word|
	  	if int == 0
	  		return "zero"
	  	elsif int < 10 && int/num == 1
	  		return word
	  	elsif int < 100 && int/num > 0
	  		if int%num == 0
	  			return word
	  		else
	  			return "#{word} #{in_words(int%num)}"
	  		end
	  	elsif int/num > 0
	  		if int%num == 0
	  			return "#{in_words(int/num)} #{word}"
	  		else
	  			return "#{in_words(int/num)} #{word} #{in_words(int%num)}"
	  		end
	  	end
	  end

	end

end