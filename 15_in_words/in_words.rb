class Integer

  def one_to_ten
    case self
    when 0
      "zero"
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    end
  end

  def ten_to_twelve
    case self
    when 10
      "ten"
    when 11
      "eleven"
    when 12
      "twelve"
    end
  end

  def teens
    case self
    when 13
      "thirteen"
    when 14
      "fourteen"
    when 15
      "fifteen"
    when 16
      "sixteen"
    when 17
      "seventeen"
    when 18
      "eighteen"
    when 19
      "nineteen"
    end
  end

  def tens
    case self
    when 20
      "twenty"
    when 30
      "thirty"
    when 40
      "forty"
    when 50
      "fifty"
    when 60
      "sixty"
    when 70
      "seventy"
    when 80
      "eighty"
    when 90
      "ninety"
    end
  end

  def hundreds
    n, rem = self / 100, self % 100
    r = "#{n.in_words} hundred"
    r += " " + rem.in_words if rem > 0
    r
  end

  def decimalize
    self.to_s.split("").reverse.each_with_index.map do |s, i|
      s.to_i * (10**i)
    end.reverse
  end

  def others_less_than_hundred
    self.decimalize.map(&:in_words).join(" ")
  end

  def twenty_below_hundred
    tens || others_less_than_hundred
  end

  def thousands
    n, rem = self / 1000, self % 1000
    r = "#{n.in_words} thousand"
    r += " " + rem.in_words if rem > 0
    r
  end

  def millions
    n, rem = self / 1_000_000, self % 1_000_000
    r = "#{n.in_words} million"
    r += " " + rem.in_words if rem > 0
    r
  end

  def billions
    n, rem = self / 1_000_000_000, self % 1_000_000_000
    r = "#{n.in_words} billion"
    r += " " + rem.in_words if rem > 0
    r
  end

  def trillions
    n, rem = self / 1_000_000_000_000, self % 1_000_000_000_000
    r = "#{n.in_words} trillion"
    r += " " + rem.in_words if rem > 0
    r
  end

  def in_words
    case self
    when 0..9
      one_to_ten
    when 10..12
      ten_to_twelve
    when 13..19
      teens
    when 20..99
      twenty_below_hundred
    when 100..999
      hundreds
    when 1000..999_999
      thousands
    when 1_000_000..999_999_999
      millions
    when 1_234_567_890..999_999_999_999
      billions
    else
      trillions
    end
  end

end
