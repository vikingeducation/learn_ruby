class Fixnum

  def in_words
    num = self
    num.num_less_then_10 if num < 10
  #  num.ten_to_twelve if (10..12) === num
  #  num.teens if (13..19) === num
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

end

puts 9.in_words