class Fixnum
  def in_words
    number_to_word = {
      0 => "zero",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
      100 => "hundred",
      1000 => "thousand",
      1_000_000 => "million"
    }

    # determine length of number
    length = self.to_s.length
    
    # number within 0 to 20
    # or a multiple of 10 within 20 to 90
    if (0..20).include?(self) || (length == 2 && self % 10 == 0)
      return number_to_word[self]
    end

    # 2-digit number that does not fit the above case
    if length == 2
      tens = self / 10 * 10
      ones = self % 10
      return "#{number_to_word[tens]} #{number_to_word[ones]}"
    end

    # 3-digit number and a multiple of 100
    if (length == 3 && self % 100 == 0)
      hundreds = self / 100
      return "#{number_to_word[hundreds]} hundred"
    end


  end
end
