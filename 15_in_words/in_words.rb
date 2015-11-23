class Fixnum
  def in_words
    numbers_in_words = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine'
    }
    numbers_in_words[self]
  end
end

puts 1.in_words