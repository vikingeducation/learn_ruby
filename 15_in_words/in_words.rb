class Fixnum


  def in_words

    ans = ""
    units = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve"}
    teens = {3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
    tens = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    if self < 20
      if self < 13
        ans += units[self]
      else
        ans += teens[self-10]
      end
    elsif self < 100
      ans += tens[self/10]
      if self % 10 > 0
        ans += " " + (self % 10).in_words
      end
    elsif self < 1000
      ans += units[self/100] + " hundred"
      if self % 100 > 0
        ans += " " + (self % 100).in_words
      end
    elsif self < 1000000
      ans += (self / 1000).in_words + " thousand"
      if self % 1000 > 0
        ans += " " + (self % 1000).in_words
      end
    elsif self < 1000000000
      ans += (self / 1000000).in_words + " million"
      if self % 1000000 > 0
        ans += " " + (self % 1000000).in_words
      end
    elsif self < 1000000000000
      ans += (self / 1000000000).in_words + " billion"
      if self % 1000000000 > 0
        ans += " " + (self % 1000000000).in_words
      end
    elsif self < 1000000000000000
      ans += (self / 1000000000000).in_words + " trillion"
      if self % 1000000000000 > 0
        ans += " " + (self % 1000000000000).in_words
      end
    end
    ans
  end


end


