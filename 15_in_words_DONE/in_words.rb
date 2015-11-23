class Fixnum
  # MY HASH OF NUMBERS & THEIR ENGLISH WORD EQUIVALENTS
  Numbers_words = {
    0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
  }

  def in_words
  # RETURNING VALUES AND COMBINING WORDS
  if Numbers_words.keys.include? self
    return Numbers_words[self]
  end
  number_in_words = make_number_into_word(self)
  end

  def make_number_into_word(number)
    remainder = number
    number_in_words = ""

    until remainder == 0
      if Numbers_words.keys.include? remainder
        return number_in_words = number_in_words + Numbers_words[remainder]
      elsif remainder < 100
        return number_in_words = number_in_words + tens(remainder)
      elsif remainder < 1000
        number_in_words = number_in_words + hundreds(remainder)
        remainder = remainder % 100
      elsif remainder < 1_000_000
        number_in_words = number_in_words + thousands(remainder)
        remainder = remainder % 1000
      elsif remainder < 1_000_000_000
        number_in_words = number_in_words + millions(remainder)
        remainder = remainder % 1_000_000
      elsif remainder < 1_000_000_000_000
        number_in_words = number_in_words + billions(remainder)
        remainder = remainder % 1_000_000_000
      elsif remainder < 1_000_000_000_000_000
        number_in_words = number_in_words + trillions(remainder)
        remainder = remainder % 1_000_000_000_000
      end
    end
  number_in_words.strip
  end

  def tens(number)
    digits = number.to_s.split('')
    Numbers_words[digits[-2].to_i * 10] + " " + Numbers_words[digits[-1].to_i]
  end

  def hundreds(number)
    digits = number.to_s.split('')
    Numbers_words[digits[0].to_i] + " hundred "
  end

  def thousands(number)
    number = number / 1000
    make_number_into_word(number) + " thousand "
  end

  def millions(number)
    number = number / 1_000_000
    make_number_into_word(number) + " million "
  end

  def billions(number)
    number = number / 1_000_000_000
    make_number_into_word(number) + " billion "
  end

  def trillions(number)
    number = number / 1_000_000_000_000
    make_number_into_word(number) + " trillion "
  end

end

puts 327680000000.in_words