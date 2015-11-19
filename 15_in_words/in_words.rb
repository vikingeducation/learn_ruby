class Fixnum

  def in_words
    Say.new(self).in_english
  end

end

class Say

  WORDS_FOR_ONES = {
    0 => '',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
  }
  WORDS_FOR_TEENS = {
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    18 => 'eighteen',
  }
  WORDS_FOR_TENS = {
    1 => 'ten',
    2 => 'twenty',
    3 => 'thirty',
    4 => 'forty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety',
  }

  attr_reader :ones, :tens, :hundreds, :thousands

  def initialize(number)
    @number = number
    parse_number_to_places
  end

  def in_english
    if @number < 0 || @number >= 1000000000000000
        raise ArgumentError
    end
    return 'zero' if @number == 0
    word = []
    word << trillions_word
    word << billions_word
    word << millions_word
    word << thousands_word
    word << hundreds_word
    word << sub_hundred(@sub_hundred)
    word.compact.reject{|x| x.empty?}.join(' ').strip
  end

  def hundred_parse
    word = []
    word << hundreds_word
    word << sub_hundred(@sub_hundred)
    word.join(' ').strip
  end

  # private

  def sub_hundred(two_digits)
    case two_digits
    when 1..9
      ones_word 
    when 10..15
      teens_word
    when 18
      "eighteen"
    when 16..19
      ones_word + "teen"
    when 20..99
      if @ones == 0
        tens_word
      else
        tens_word + " " + ones_word
      end
    end
  end

  def trillions_word
    return '' if @trillions.nil? || @trillions == 0
    Say.new(@trillions).hundred_parse + " trillion"
  end

  def billions_word
    return '' if @billions.nil? || @billions == 0
    Say.new(@billions).hundred_parse + " billion"
  end

  def millions_word
    return '' if @millions.nil? || @millions == 0
    Say.new(@millions).hundred_parse + " million"
  end

  def thousands_word
    return '' if @thousands.nil? || @thousands == 0
    Say.new(@thousands).hundred_parse + " thousand"
  end

  def hundreds_word
    return '' if @hundreds.nil? || @hundreds == 0
    WORDS_FOR_ONES[@hundreds] + " hundred"
  end

  def ones_word ()
    WORDS_FOR_ONES[@ones]
  end

  def teens_word
    WORDS_FOR_TEENS[@sub_hundred]
  end

  def tens_word
    WORDS_FOR_TENS[@tens]
  end

  def parse_number_to_places
    @sub_hundred = get_place(0,2)

    @ones = get_place(0)
    @tens = get_place(1)
    @hundreds = get_place(2)
    @thousands = get_place(3,3)
    @millions = get_place(6,3)
    @billions = get_place(9,3)
    @trillions = get_place(12,3)
  end

  def get_place (range, distance = 1)
    range = @number.to_s.reverse.split(//)[range,distance]
    range.join.reverse.to_i if range
  end

end
