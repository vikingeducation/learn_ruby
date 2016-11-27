class Fixnum

  def in_words

    if @@num_in_words.has_key?(self)
      @@num_in_words[self]
    elsif self < 100 #tens
      tens = (self / 10) * 10
      ones = self % 10
      "#{tens.in_words} #{ones.in_words}"
    elsif self < 1000 #hundreds
      hundreds = self / 100
      remainder = self % 100
      "#{hundreds.in_words} hundred" + (remainder==0 ? "": " " + "#{remainder.in_words}")
    elsif self < 1_000_000 #thousands
      thousands = self / 1000
      remainder = self % 1000
      "#{thousands.in_words} thousand" + (remainder==0 ? "": " " + "#{remainder.in_words}")
    elsif self < 1_000_000_000 #millions
      millions = self / 1_000_000
      remainder = self % 1_000_000
      "#{millions.in_words} million" + (remainder==0 ? "": " " + "#{remainder.in_words}")
    elsif self < 1_000_000_000_000 #billions
      billions = self / 1_000_000_000
      remainder = self % 1_000_000_000
      "#{billions.in_words} billion" + (remainder==0 ? "": " " + "#{remainder.in_words}")
    elsif self < 1_000_000_000_000_000 #trillions
      trillions = self / 1_000_000_000_000
      remainder = self % 1_000_000_000_000
      "#{trillions.in_words} trillion" + (remainder==0 ? "": " " + "#{remainder.in_words}")
    end

  end

  @@num_in_words = {
    1000000000000 => "one trillion",
    1000000000 => "one billion",
    1000000 => "one million",
    1000 => "one thousand",
    100 => "one hundred",
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

end