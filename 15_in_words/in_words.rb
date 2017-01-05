class Fixnum
  def in_words
    words_map = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}
    if self == 0
      return "zero"
    end
    words = ""
    number = self
    if number / 1_000_000_000_000 > 0
      words += (number / 1_000_000_000_000).in_words + " trillion "
      number %= 1_000_000_000_000
    end
    if number / 1_000_000_000 > 0
      words += (number / 1_000_000_000).in_words + " billion "
      number %= 1_000_000_000
    end
    if number / 1_000_000 > 0
      words += (number / 1_000_000).in_words + " million "
      number %= 1_000_000
    end
    if number / 1000 > 0
      words += (number / 1000).in_words + " thousand "
      number %= 1000
    end
    if number / 100 > 0
      words += (number / 100).in_words + " hundred "
      number %= 100
    end
    if number > 0
      if number < 20
        words += words_map[number]
      else
        words += words_map[(number.to_s[0].to_i) * 10]
        if number % 10 > 0
          words += " " + words_map[number%10]
        end
      end
    end
    words.strip
  end
end

