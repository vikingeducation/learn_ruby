class Fixnum
  def in_words
    below_13={0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7=> 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen'}
    tens={20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}
    case self
    when 0..13
      below_13[self]
    when 14, 16, 17, 19
      teen
    when 15
      'fifteen'
    when 18
      'eighteen'
    when 20, 30, 40, 50 , 60, 70, 80, 90
      tens[self]
    when (20..99)
      tens = (self / 10) * 10
      ones = self - tens
      "#{tens.in_words} #{ones.in_words}"
    when (100..999)
      hundreds = self / 100
      rest = self - (hundreds * 100)
      if rest > 0
        "#{hundreds.in_words} hundred #{rest.in_words}"
      else
        "#{hundreds.in_words} hundred"
      end
    when (1_000..999_999)
      thousands = self / 1_000
      rest = self - (thousands * 1_000)
      if rest > 0
        "#{thousands.in_words} thousand #{rest.in_words}"
      else
        "#{thousands.in_words} thousand"
      end
    when (1_000_000..999_999_999)
      millions = self / 1_000_000
      rest = self - (millions * 1_000_000)
      if rest > 0
        "#{millions.in_words} million #{rest.in_words}"
      else
        "#{millions.in_words} million"
      end
    when (1_000_000_000..999_999_999_999)
      billions = self / 1_000_000_000
      rest = self - (billions * 1_000_000_000)
      if rest > 0
        "#{billions.in_words} billion #{rest.in_words}"
      else
        "#{billions.in_words} billion"
      end
    when (1_000_000_000_000..999_999_999_999_999)
      trillions = self / 1_000_000_000_000
      rest = self - (trillions * 1_000_000_000_000)
      if rest > 0
        "#{trillions.in_words} trillion #{rest.in_words}"
      else
        "#{trillions.in_words} trillion"
      end
    end
  end
  def teen
    (self - 10).in_words + 'teen'
  end
end
