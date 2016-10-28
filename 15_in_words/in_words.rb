class Fixnum
	def in_words(number = 0)
	  number = self
	  if number == 0
	    return 'zero'
	  end

	  number_phrase = ''
	  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	  left_over = number

	  calculating = left_over / 1000000000000
	  left_over = left_over - calculating * 1000000000000
	  if calculating > 0
	    trillions = calculating.in_words
	    number_phrase = number_phrase + trillions + ' trillion'
	    if left_over > 0
	      number_phrase = number_phrase + ' '
	    end
	  end
	  calculating = left_over / 1000000000
	  left_over = left_over - calculating * 1000000000
	  if calculating > 0
	    billions = calculating.in_words
	    number_phrase = number_phrase + billions + ' billion'
	    if left_over > 0
	      number_phrase = number_phrase + ' '
	    end
	  end
	  calculating = left_over / 1000000
	  left_over = left_over - calculating * 1000000
	  if calculating > 0
	    millions = calculating.in_words
	    number_phrase = number_phrase + millions + ' million'
	    if left_over > 0
	      number_phrase = number_phrase + ' '
	    end
	  end
	  calculating = left_over / 1000
	  left_over  = left_over - calculating * 1000
	  if calculating > 0
	    thousands = calculating.in_words
	    number_phrase = number_phrase + thousands + ' thousand'
	    if left_over > 0
	      number_phrase = number_phrase + ' '
	    end
	  end
	  calculating = left_over / 100
	  left_over  = left_over - calculating * 100
	  if calculating > 0
	    hundreds  = calculating.in_words
	    number_phrase = number_phrase + hundreds + ' hundred'
	    if left_over > 0
	      number_phrase = number_phrase + ' '
	    end
	  end
	  calculating = left_over / 10
	  left_over  = left_over - calculating * 10
	  if calculating > 0
	    if ((calculating == 1) and (left_over > 0))
	      number_phrase = number_phrase + teens[left_over-1]
	      left_over = 0
	    else
	      number_phrase = number_phrase + tens[calculating-1]
	    end

	    if left_over > 0
	      number_phrase = number_phrase + ' '
	    end
	  end
	  calculating = left_over
	  left_over  = 0

	  if calculating > 0
	    number_phrase = number_phrase + ones[calculating-1]
	  end
	  number_phrase
	end
end