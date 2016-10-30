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
    string = ""
    dictionary.each do |int, word|
      if self/int > 0 && self/10 > 0
        string += word + ' ' + (self/10).in_words
        string.strip!
        break
      elsif self == int
        string = word
        string.strip!
      elsif self/10 == 0 && self == 0
        string = "zero"
      end
    end
    string
    # if self > 20
    #   tens = self / 10 * 10
    #   ones = self % 10
    #   first_digit = string[0].to_i
    #   "#{}"
    # elsif self >= 100
    #   hundreds = self / 100 * 100
    #   thousands = self / 1000 * 1000
    # end

  end
end
