class Fixnum

  def word_list
    {
      1000000000000 => "trillion",
      1000000000    => "billion",
      1000000       => "million",
      1000          => "thousand",
      100           => "hundred",
      90            => "ninety",
      80            => "eighty",
      70            => "seventy",
      60            => "sixty",
      50            => "fifty",
      40            => "forty",
      30            => "thirty",
      20            => "twenty",
      19            =>"nineteen",
      18            =>"eighteen",
      17            =>"seventeen", 
      16            =>"sixteen",
      15            =>"fifteen",
      14            =>"fourteen",
      13            =>"thirteen",              
      12            =>"twelve",
      11            => "eleven",
      10            => "ten",
      9             => "nine",
      8             => "eight",
      7             => "seven",
      6             => "six",
      5             => "five",
      4             => "four",
      3             => "three",
      2             => "two",
      1             => "one"
    }
  end
  def write_words(num)
    word = ""
    until num == 0
      word_list.each do |base, name|
        if num < 10 && num/base > 0
          word += "#{name}"
          num -= num      
        elsif num < 100 && num/base > 0
          word += "#{name} "
          num %= base
        elsif num/base > 0
          word += write_words(num/base) + " #{name} "
          num %= base
        end
      end
    end
    word.strip
  end

  def in_words
    if self == 0 then return "zero" end
    write_words(self)
  end
end