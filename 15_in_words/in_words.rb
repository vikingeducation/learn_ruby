class Fixnum
  
  def in_words
    number_length = self.to_s.length

    if number_to_words.has_key?(self)
      number_to_words[self]
    elsif number_length < 3
      tens_place = self / 10
      units_place = self % 10
      (tens_place * 10).in_words + " " + units_place.in_words
    elsif number_length < 4 # less than 1_000
      hundreds_place = self / 100
      result = hundreds_place.in_words + " hundred"
      self % 100 == 0 ?
        result : result + " " + (self % 100).in_words
    elsif number_length < 7 # less than 1_000_000
      thousands_place = self / 1_000
      result = thousands_place.in_words + " thousand"
      self % 1_000 == 0 ?
        result : result + " "  + (self % 1_000).in_words
    elsif number_length < 10 # less than 1_000_000_000
      millions_place = self / 1_000_000
      result = millions_place.in_words + " million"
      self % 1_000_000 == 0 ?
        result : result + " "  + (self % 1_000_000).in_words
    elsif number_length < 13 # less than 1_000_000_000_000
      billions_place = self / 1_000_000_000
      result = billions_place.in_words + " billion"
      self % 1_000_000_000 == 0 ?
        result : result + " "  + (self % 1_000_000_000).in_words
    elsif number_length < 16 # less than 1_000_000_000_000_000
      trillions_place = self / 1_000_000_000_000
      result = trillions_place.in_words + " trillion"
      self % 1_000_000_000_000 == 0 ?
        result : result + " "  + (self % 1_000_000_000_000).in_words
    end
  end

  private

  @@number_to_words = {
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

  def number_to_words
    @@number_to_words
  end

end

