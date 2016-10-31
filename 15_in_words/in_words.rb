require 'pry'
require 'pry-byebug'

class Fixnum
  def in_words
    dictionary = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
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
    string = self.to_s
    one_less_digit = string[1..string.length].to_i
    first_digit = string[0].to_i
    output = ""
    if self >= 1000
      thousands = self / 1000
      remainder = self - thousands * 1000
      if remainder > 0
        output += thousands.in_words + ' thousand ' + (self - thousands*1000).in_words
      else
        output += thousands.in_words + ' thousand'
      end
      #binding.pry
      return output
    elsif self >= 100
      output += first_digit.in_words + ' '
    end
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
