class Fixnum

  UNDER_TEN = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  TENS = {10 => "ten", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  TEENS = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
  TENS_AND_TEENS = TENS.merge(TEENS)
  HUNDREDS = {100 => "one hundred", 200 => "two hundred", 300 => "three hundred", 400 => "four hundred", 500 => "five hundred", 600 => "six hundred", 700 => "seven hundred", 800 => "eight hundred", 900 => "nine hundred"}
  THOUSANDS = {1000 => "one thousand", 2000 => "two thousand", 3000 => "three thousand", 4000 => "four thousand", 5000 => "five thousand", 6000 => "six thousand", 7000 => "seven thousand", 8000 => "eight thousand", 9000 => "nine thousand"}
  MILLIONS = {1_000_000 => "one million", 2_000_000 => "two million", 3_000_000 => "three million", 4_000_000 => "four million", 5_000_000 => "five million", 6_000_000 => "six million", 7_000_000 => "seven million", 8_000_000 => "eight million", 9_000_000 => "nine million"}
  BILLIONS = {1_000_000_000 => "one billion", 2_000_000_000 => "two billion", 3_000_000_000 => "three billion", 4_000_000_000 => "four billion", 5_000_000_000 => "five billion", 6_000_000_000 => "six billion", 7_000_000_000 => "seven billion", 8_000_000_000 => "eight billion", 9_000_000_000 => "nine billion"}
  TRILLION = {1_000_000_000_000 => "one trillion"}
  ALL = UNDER_TEN.merge(TENS).merge(TEENS).merge(HUNDREDS).merge(THOUSANDS).merge(MILLIONS).merge(TRILLION).merge(BILLIONS)

  def in_words
    string = ""
    case self
    when (0..9)
      UNDER_TEN[self]
    when (10..19)
      TENS_AND_TEENS[self]
    when (20..99)
      if TENS.include?(self)
        TENS[self]
      else
        num = self.to_s.split('')
        num[0].to_s << "0"
        if num[1] == "0"
          num.pop
        end
        num.each do |n|
          string << ALL[n.to_i] << " "
        end
        string.rstrip
      end
    when (100..999)
      if HUNDREDS.include?(self)
        HUNDREDS[self]
      else
        num = self.to_s.split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}
        if num[1] == "10"
          num.delete_at(1)
          num[0].insert(0,"1")
        end
        num.reverse.map {|n| n.to_i }.each do |n|
          string << ALL[n] << " "
        end
        string.rstrip
      end
    when (1000..999_999)
      if THOUSANDS.include?(self)
        THOUSANDS[self]
      else
        num = self.to_s.reverse
        last_part_of_num = num.slice!(0..3).split('').each_with_index {|n, index| n.to_s << ("0" * index)}
        first_part_of_num = num.split('').map {|n| n.to_s << "0"}
        num = last_part_of_num.concat(first_part_of_num).reverse.map {|n| n.to_i }
        num.each do |n|
          string << ALL[n] << " "
        end
        string.rstrip
      end
    when (1_000_000..999_999_999)
      if MILLIONS.include?(self)
        MILLIONS[self]
      elsif self.to_s.length == 7
        num = self.to_s.split('').reverse
        hundreds = num.slice!(0..2).each_with_index {|n, index| n.to_s << ("0" * index)}.map(&:to_i)
        thousands = num.slice!(0..2).each_with_index {|n, index| n.to_s << ("0" * index)}.map(&:to_i)
        num[0] << "000000"
        mill_in_words = num.map(&:to_i)
        string << MILLIONS[mill_in_words[0]] << " " << HUNDREDS[thousands[2]] << " thousand " << TENS[thousands[1]] << " " << UNDER_TEN[thousands[0]]
        string
      else
        num = self.to_s.split('').reverse
        hundreds = num.slice!(0..2).each_with_index {|n, index| n.to_s << ("0" * index)}.map(&:to_i)
        thousands = num.slice!(0..2).each_with_index {|n, index| n.to_s << ("0" * index)}.map(&:to_i)
        millions = num.each_with_index {|n, index| n.to_s << ("0" * index)}.map(&:to_i)
        string << TENS_AND_TEENS[millions[1]] << " million " << UNDER_TEN[hundreds[0]]
      end
    when (1_000_000_000..9_999_999_999)
      num = self.to_s
      billion = (num[0] << "000_000_000").to_i
      million = num[1..3].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
      thousand = num[4..6].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
      hundred = num[7..9].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
      string << BILLIONS[billion] << " " << HUNDREDS[million[0]] << " " << TENS[million[1]] << " " << UNDER_TEN[million[2]] << " million " << HUNDREDS[thousand[0]] << " " << TENS[thousand[1]] << " " << UNDER_TEN[thousand[2]] << " thousand " << HUNDREDS[hundred[0]] << " " << TENS[hundred[1]]
    else
      if TRILLION.include?(self)
        TRILLION[self]
      else
        num = self.to_s
        trillion = (num[0] << "000_000_000_000").to_i
        billion = num[1..3].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
        b = (billion[2].to_s << "000_000_000").to_i
        million = num[4..6].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
        m = (million[2].to_s << "000_000").to_i
        thousand = num[7..9].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
        t = (thousand[2].to_s << "000").to_i
        hundred = num[10..12].split('').reverse.each_with_index {|n, index| n.to_s << ("0" * index)}.reverse.map(&:to_i)
        string << TRILLION[trillion] << " " << ALL[billion[0]] << " " << ALL[billion[1]] << " " << ALL[b] << " "<< ALL[million[0]] << " " << ALL[million[1]] << " " << ALL[m] << " " << ALL[thousand[0]] << " " << ALL[thousand[1]] << " "
        if thousand [1] != 0
          string << "thousand "
        end
        string  << ALL[t] << " " << ALL[hundred[0]] << " " << ALL[hundred[1]] << " " << ALL[hundred[2]]
        string.gsub("zero", "").split(" ").join(" ")
      end

    end

  end

end
