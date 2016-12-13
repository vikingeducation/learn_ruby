class Fixnum

  def in_dictionary(word)
    dictionary = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}
    dictionary[word]
  end

  def in_words

    # return 0 and other numbers immediately if they are in dictionary
    return 'zero' if self == 0
    return in_dictionary(self) unless in_dictionary(self).nil?

    words = []
    num = self

    chunks = self.to_s.reverse.scan(/.{1,3}/).reverse.map!{|n| n.reverse.to_i}

    z = chunks.size

    chunks.each_with_index do |n, i|

      puts "n #{n}"

      n = hundreds(words, n)

      if in_dictionary(n)
        words << in_dictionary(n)
      elsif n > 0
        n = tens(words, n)
        n = ones(words, n)
      end

      if chunks[i] > 0
        words.push('trillion') if z == 5
        words.push('billion') if z == 4
        words.push('million') if z == 3
        words << 'thousand' if z == 2
      end

      z -= 1
    end

    words.join(' ')

  end

  def ones(list, num)
    return num unless num >= 0
    list << in_dictionary(num)
    num -= num
  end

  def tens(list, num)
    return num unless num >= 10
    list << in_dictionary(num/10*10)
    num = num % 10
  end

  def hundreds(list, num)
    return num unless num >= 100
    list << in_dictionary(num/100)
    list << 'hundred'
    num = num % 100
  end

end
