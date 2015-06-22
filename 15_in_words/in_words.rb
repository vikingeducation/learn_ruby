require 'pry'

class Fixnum



  def in_words
    num = self
    basics = {0 => 'zero',
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
            100 => 'hundred',
            1_000 => 'thousand',
            1_000_000 => 'million',
            1_000_000_000 => 'billion',
            1_000_000_000_000 => 'trillion'}

    words = []
#    binding.pry
    if basics.keys.include? num
      words << basics[num]
    elsif num > 1_000_000_000_000
      #
    elsif num > 1_000_000_000
      #
    elsif num > 1_000_000
      #
    elsif num > 1_000
      #
    elsif num > 100
      #
    elsif num < 100
      words << basics[num / 10 * 10]
      words << basics [num % 10]
    else
      "cannot process"
    end
    words.join (" ")
  end



end

puts 71.in_words