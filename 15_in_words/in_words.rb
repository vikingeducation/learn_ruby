class Fixnum
  WORDS019 = ["zero", "one", "two", "three", "four",
               "five", "six", "seven", "eight", "nine",
               "ten", "eleven", "twelve", "thirteen" ,
               "fourteen", "fifteen", "sixteen", "seventeen",
               "eighteen", "nineteen"]
  WORDS_20s_and_over = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  def in_words
    if self < 20
      WORDS019[self%20]
    elsif self < 100
      i = (self / 10) - 2
      first_word = "#{WORDS_20s_and_over[i]}"
      remainder = self % 10
      remainder > 0 ?  first_word + " #{remainder.in_words}" : first_word
    elsif self < 1000
      i = (self / 100)
      hundreds = WORDS019[i] + " hundred"
      remainder = self % 100
      remainder > 0 ? hundreds + " #{remainder.in_words}" : hundreds
    elsif self < 19_000
      i = self / 1000
      thousands = WORDS019[i] + " thousand"
      remainder = self % 1000
      remainder > 0 ? thousands + " #{remainder.in_words}" : thousands
    elsif self < 100_000
      i = self / 1000
      first_word = i.in_words
      second_word = "thousand"
      remainder = self % 1000
      if remainder > 0
        third_word = remainder.in_words
        first_word + " " + second_word + " " + third_word
      else
        first_word + " " + second_word
      end
    elsif self < 1_000_000
      i = self / 100_000
      first_word = i.in_words
      second_word = "hundred"
      remainder = self % 100_000
      if remainder > 0
        first_word + " " + second_word + " " + remainder.in_words
      else
        first_word + " " + second_word
      end
    elsif self < 1_000_000_000
      i = self / 1_000_000
      first_word = i.in_words
      second_word = "million"
      remainder = self % 1_000_000
      if remainder > 0
        first_word + " " + second_word + " " + remainder.in_words
      else
        first_word + " " + second_word
      end
    elsif self < 1_000_000_000_000
      i = self / 1_000_000_000
      first_word = i.in_words
      second_word = "billion"
      remainder = self % 1_000_000_000
      if remainder > 0
        first_word + " " + second_word + " " + remainder.in_words
      else
        first_word + " " + second_word
      end
    else
      i = self / 1_000_000_000_000
      first_word = i.in_words
      second_word = "trillion"
      remainder = self % 1_000_000_000_000
      if remainder > 0
        first_word + " " + second_word + " " + remainder.in_words
      else
        first_word + " " + second_word
      end
    end
  end
end
