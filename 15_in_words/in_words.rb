class Fixnum

  attr_accessor :num_words

  def initialize
    @num_words = num_words
  end


  @@num_words = {
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
    90 => 'ninety'
  }


  def two_digits(n)
    if @@num_words.keys.include? n
      return @@num_words[n]
    else
      digits = n.to_s.split(//)
      tens = digits[0].to_i * 10
      single = digits[1].to_i
      return @@num_words[tens] + " " + @@num_words[single]
    end
  end


  def three_digits
    digits = self.to_s.split(//)
    hundreds = digits[0].to_i
    rest = digits[1,2].join  # rest is a string
    if rest == "00"
      return @@num_words[hundreds] + " hundred"
    else
      return @@num_words[hundreds] + " hundred " + two_digits(rest.to_i)
    end
  end



  def in_words
    if @@num_words.keys.include? self
      return @@num_words[self]

    elsif self.to_s.length == 2
      two_digits(self)

    elsif self.to_s.length == 3
      three_digits

    # TODO: expand this method for thousands, millions, billions, and trillions

    end
  end



end