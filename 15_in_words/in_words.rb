class Fixnum
  def in_words
    left = self
    str = []
    if left.zero?
      str << "zero"
    else
      if left > 999_999_999_999
        str << hundreds(left/1000000000000)
        left -= (left/1000000000000) * 1000000000000
        str << "trillion"
      end
      if left > 999_999_999
        str << hundreds(left/1000000000)
        left -= (left/1000000000) * 1000000000
        str << "billion"
      end
      if left > 999_999
        str << hundreds(left/1000000)
        left -= (left/1000000) * 1000000
        str << "million"
      end
      if left > 999
        str << hundreds(left/1000)
        left -= (left/1000) * 1000
        str << "thousand"
      end
      str << hundreds(left) unless left == 0
    end
    str.join(" ")
  end

  def hundreds(num)
    str = []
    left = num
    if left > 99
      str << singles(left/100)
      str << "hundred"
      left -= (left/100) * 100
    end
    if left < 20 && left > 0
      str << singles(left)
    elsif left > 0
      unless left % 10 == 0
        str << tens(left / 10)
        left -= (left/10) * 10
        str << singles(left)
      else
        str << tens(left / 10)
      end
    end
    str
  end

  def singles(num)
    numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight",
      "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
      "sixteen", "seventeen", "eighteen", "nineteen"]
    numbers[num - 1]
  end

  def tens(num)
    numbers = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy",
      "eighty", "ninety"]
    numbers[num - 1]
  end
end
