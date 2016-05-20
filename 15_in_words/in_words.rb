
class Fixnum

  def lookup_number(number)
    number_words = {
      0 => "zero",1 => "one",2 => "two",3 => "three",4 => "four",
      5 => "five",6 => "six",7 => "seven",8 => "eight",9 => "nine",
      10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
      14 => "fourteen",15 => "fifteen",16 => "sixteen",17 => "seventeen",
      18 => "eighteen",19 => "nineteen", 20 => "twenty", 30 => "thirty",
      40 => "forty", 50 => "fifty",60 => "sixty",70 => "seventy",
      80 => "eighty",90 => "ninety"
    }
    return number_words[number]
  end

  def in_words
    if self >= 1_000_000_000_000
      wordify_trillions(self)
    elsif self >= 1_000_000_000
      wordify_billions(self)
    elsif self >= 1_000_000
      wordify_millions(self)
    elsif self >= 1000
      wordify_thousands(self)
    elsif self >= 100
      wordify_hundreds(self)
    elsif self > 20
      wordify_tens(self)
    else
      wordify_ones(self)
    end
  end

  def wordify_ones(number)

    number_word = ""

    number_word << lookup_number(number)

    return number_word
  end

  def wordify_tens(number)

    number_word = ""

    if number.between?(11, 19)

      number_word << lookup_number(number)

    else

        tens = (number / 10) * 10

        remainder = number % 10

        number_word << lookup_number(tens) + " "

        unless remainder == 0

          number_word << remainder.in_words

        end

    end

    return number_word.strip
  end

  def wordify_hundreds(number)

    number_word = ""

    hundreds = number / 100

    number_word << hundreds.in_words + " hundred "

    remainder = number % 100

    if remainder > 0

      number_word << remainder.in_words

    end

    return number_word.strip
  end

  def wordify_thousands(number)

    number_word = ""

    thousands = number / 1000

    number_word << thousands.in_words + " thousand "

    remainder = number % 1000

    if remainder > 0

      number_word << remainder.in_words

    end

    return number_word.strip
  end

  def wordify_millions(number)

    number_word = ""

    millions = number / 1_000_000

    number_word << millions.in_words + " million "

    remainder = number % 1_000_000

    if remainder > 0

      number_word << remainder.in_words

    end

    return number_word.strip
  end

  def wordify_billions(number)

    number_word = ""

    billions = number / 1_000_000_000

    number_word << billions.in_words + " billion "

    remainder = number % 1_000_000_000

    if remainder > 0

      number_word << remainder.in_words

    end

    return number_word.strip
  end

  def wordify_trillions(number)

    number_word = ""

    trillions = number / 1_000_000_000_000

    number_word << trillions.in_words + " trillion "

    remainder = number % 1_000_000_000_000

    if remainder > 0

      number_word << remainder.in_words

    end

    return number_word.strip
  end

end
