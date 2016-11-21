class Fixnum
  NUMBER_MAP = {
    1_000_000_000_000 => "trillion",
    1_000_000_000 => "billion",
    1_000_000 => "million",
    1_000 => "thousand",
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
    1 => "one",
  }

  def convert(input, result = "")
    return result if input.zero?
    NUMBER_MAP.each do |number, word|
      if input >= number
        quotient = input / number
        next_input = input - quotient * number
        if NUMBER_MAP.include?(quotient)
          result << "#{NUMBER_MAP[quotient]} " if number >= 100
        else
          result << "#{convert(quotient)}"
        end
        result << "#{word} "
        return convert(next_input, result)
      end
    end
  end

  def in_words
    return "zero" if self.zero?
    convert(self).strip
  end
end
