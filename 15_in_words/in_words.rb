class Fixnum

  # Takes a Fixnum and returns it in words.
  def in_words

    # Hashes for our base words that will be used to construct bigger words.
    digits = { 1 => "one", 2 => "two", 3 => "three", 4 => "four",
               5 => "five", 6 => "six", 7 => "seven", 8 => "eight",
               9 => "nine" }
    special_digits = { 10 => "ten", 11 => "eleven", 12 => "twelve", 
                       13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
                       16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
                       19 => "nineteen" }
    tens = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty",
             7 => "seventy", 8 => "eighty", 9 => "ninety" }

    # Trillions case
    if self > 999999999999
      if self % 1000000000000 == 0
        return (self / 1000000000000).in_words + " trillion"
      else
        return (self / 1000000000000).in_words + " trillion " + (self % 1000000000000).in_words
      end

    # Billions case
    elsif self > 999999999
      if self % 1000000000 == 0
        return (self / 1000000000).in_words + " billion"
      else
        return (self / 1000000000).in_words + " billion " + (self % 1000000000).in_words
      end

    # Millions case
    elsif self > 999999
      if self % 1000000 == 0
        return (self / 1000000).in_words + " million"
      else
        return (self / 1000000).in_words + " million " + (self % 1000000).in_words
      end

    # Thousands case
    elsif self > 999
      if self % 1000 == 0
        return (self / 1000).in_words + " thousand"
      else
        return (self / 1000).in_words + " thousand " + (self % 1000).in_words
      end

    # Hundreds case
    elsif self > 99

      # We won't need recursive calls here since we have a digits hash.
      if self % 100 == 0
        return digits[self / 100] + " hundred"
      else
        return digits[self / 100] + " hundred " + (self % 100).in_words
      end

    # Single and double digits cases
    elsif self > 9
      if special_digits.include?(self)
        return special_digits[self]
      elsif tens.include?(self / 10)
        if self % 10 == 0
          return tens[self / 10]
        else
          return tens[self / 10] + " " + (self % 10).in_words
        end
      end
    elsif self > 0
      return digits[self]
    elsif self == 0
      return "zero"
    else

      # Catch all, shouldn't happen, though.
      return ""
    end
  end

end