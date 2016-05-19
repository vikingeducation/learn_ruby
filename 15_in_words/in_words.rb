
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
    if self > 20
      wordify_tens(self)
    else
      wordify_ones(self)
    end
  end

  def split_by_decimal

    digits = self.to_s.split("")

    component_numbers = []

    total_decimal_places = digits.length

    digits.each_with_index do |number, current_decimal_place|

      current_decimal_place += 1

      following_decimal_places = total_decimal_places - current_decimal_place

      component_numbers << "#{number + ("0" * following_decimal_places)}".to_i

    end

    return component_numbers
  end

  def wordify_ones(number)

    number_word = ""

    number_word << lookup_number(number)

    return number_word
  end

  def wordify_tens(number)

    numbers = number.split_by_decimal

    number_word = ""

    sum = numbers.reduce { |sum, number| sum += number }

    if sum.between?(11, 19)

      number_word << lookup_number(sum)

    else

        number_word << lookup_number(numbers[0]) + " "

        unless numbers[1] == 0

          number_word << numbers[1].in_words

        end

    end

    return number_word.strip
  end

end
