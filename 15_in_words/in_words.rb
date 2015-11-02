module InWords
  @@lookup_ones_tweens = {
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
    19 => 'nineteen'
  }
  @@lookup_tens = {
    2 => 'twenty',
    3 => 'thirty',
    4 => 'forty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety'
  }
  @@lookup_big_digits = {0 => '', 1 => 'thousand', 2 => 'million', 3 => 'billion', 4 => 'trillion'}

  def three_digits number
    result = []

    if number < 100
      result << (two_digits number)
    else
      number_string = number.to_s
      tens_and_ones_digits = number_string[-2, 2].to_i

      # hundreds digit
      if number >= 100
        hundreds_digit = number_string[-3].to_i
        result << @@lookup_ones_tweens[hundreds_digit] + ' hundred'
      end

      result << (two_digits tens_and_ones_digits)
    end

    result.join(' ').strip
  end

  def two_digits number
    result = []

    if number >= 20
      number_string = number.to_s
      result << @@lookup_tens[number_string[0].to_i]
      result << @@lookup_ones_tweens[number_string[1].to_i] unless number_string[1] == '0'

    else # less than twenty
      result << @@lookup_ones_tweens[number] unless number == 0
    end

    result.join(' ')
  end

  def array_ify number
    number_string = number.to_s
    result = []

    while number_string.length > 0
      if number_string.length >= 3
        term_string = number_string[-3, 3]
      elsif number_string.length == 2
        term_string = number_string[-2, 2]
      else
        term_string = number_string[-1]
      end
      result << term_string.to_i
      number_string.chomp!(term_string)
    end

    result.reverse
  end

  def in_words
    if self == 0
      'zero'
    elsif self < 1000
      three_digits(self)
    else
      result = []
      number_array = array_ify(self)
      number_array.each_with_index do |three_digit_number, index|
        if three_digit_number != 0
          result << three_digits(three_digit_number) + ' ' + @@lookup_big_digits[number_array.length - 1 - index]
        end
      end
      result.join(' ').strip
    end # end if
  end # end in_words

end

class Fixnum
  include InWords
end