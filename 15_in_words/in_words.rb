class Fixnum

  def in_words
    num = self
    if num < 10
      num.num_less_then_10
    elsif (10..12) === num
      num.ten_to_twelve
    elsif (13..19) === num
      num.teens
    elsif (20..99) === num
      num.tens
    end
  end




  def num_less_then_10
    case self
    when 0
      'zero'
    when 1
      'one'
    when 2
      'two'
    when 3
      'three'
    when 4
      'four'
    when 5
      'five'
    when 6
      'six'
    when 7
      'seven'
    when 8
      'eight'
    when 9
      'nine'
    end
  end

  def ten_to_twelve
    case self
    when 10
      'ten'
    when 11
      'eleven'
    when 12
      'twelve'
    end
  end

  def teens
    case self
    when 13
      'thirteen'
    when 14
      'fourteen'
    when 15
      'fifteen'
    when 16
      'sixteen'
    when 17
      'seventeen'
    when 18
      'eighteen'
    when 19
      'nineteen'
    end
  end

  def tens
    case self
    when 20
      'twenty'
    when 30
      'thirty'
    when 40
      'forty'
    when 50
      'fifty'
    when 60
      'sixty'
    when 70
      'seventy'
    when 80
      'eighty'
    when 90
      'ninety'
    end
  end

  def bigger_num
    case self
    when self >= 100
      'hundred'
    end
  end

end

puts 9.in_words