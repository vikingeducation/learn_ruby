class Fixnum

  def in_words
    dictionary = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

    # return / eliminate the num in dictionary immediately if it's in above dictionary
    return dictionary[self] unless dictionary[self].nil?

    # make sure zero prints as '' from here on
    dictionary[0] = nil

    # set up list into which we'll push words
    words = []

    # convert to array of fixnum e,g, 72_658 => [7,2,6,5,8]
    num = self


    # iterate through each number, starting from left
    # use i to keep track of the powers of 10
    while num > 0

      exp = num.to_s.split('').size-1

      # if it's in the dictionary, put it in
      unless dictionary[num].nil?
        words << dictionary[num]
        num -= num/10**exp * 10**exp
        next
      end

      # if NOT in the dictionary
      if exp == 2
        words << dictionary[num/10**exp]
      end

    end


    words.join(' ')
  end


end



puts 1099.in_words
