require 'pry'
require 'pry-byebug'

class Fixnum
  def in_words
    string = self.to_s
    number_of_digits = string.length
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
    output = ""
    dictionary.each do |int, word|
      if self/int > 0 && self/10 > 0 && self > 20
        one_less_digit = string[1..string.length].to_i
        if one_less_digit == 0
          output += word
        else
          output += word + ' ' + one_less_digit.in_words
        end
        output.strip!
        break
      elsif self == int
        output = word
        output.strip!
      elsif self/10 == 0 && self == 0
        output = "zero"
      end
    end
    output

  end
end
