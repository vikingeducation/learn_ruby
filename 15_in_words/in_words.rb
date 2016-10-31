require 'pry'
require 'pry-byebug'

class Fixnum
  def in_words
    string = self.to_s
    one_less_digit = string[1..string.length].to_i
    first_digit = string[0].to_i
    output = ""
    orders_of_magnitude = {
      1000000000000 => "trillion",
      1000000000 => "billion",
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
    }
    orders_of_magnitude.each do |magnitude, word|
      if self >= magnitude
        quantity = self / magnitude
        remainder = self - quantity * magnitude
        if remainder > 0
          output += quantity.in_words + ' ' + word + ' ' + remainder.in_words
        else
          output += quantity.in_words + ' ' + word
        end
        return output
      end
    end
    dictionary = {
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
      1 => "one"
    }
    dictionary.each do |match, word|
      if self/match > 0 && self > 20
        if one_less_digit == 0
          output += word
        else
          output += word + ' ' + one_less_digit.in_words
        end
        output.strip!
        break
      elsif self == match
        output = word
        output.strip!
      elsif self/10 == 0 && self == 0
        output = "zero"
      end
    end
    output
  end
end
