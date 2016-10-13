class Fixnum
  # Separates a number into groups of three
  # given 12345, returns ['345', '12']
  def separate_by_threes(num)
    num = num.to_s
    groups = []
    while num
      if num.length > 3
        partition = num[-3..-1]
        num = num[0..num.length-4]
      else
        partition = num
        num = nil
      end
      groups << partition
    end
    groups
  end

  # "read_X" functions -- basically dictionaries
  def read_hundreds(num)
    num == 0 ? "" : "#{read_singles(num)} hundred"
  end

  def read_tens(num)
    case num
    when 0
      return
    when 1
      'ten'
    when 2
      'twenty'
    when 3
      'thirty'
    when 4
      'forty'
    when 5
      'fifty'
    when 6
      'sixty'
    when 7
      'seventy'
    when 8
      'eighty'
    when 9
      'ninety'
    end
  end

  def read_teens(num)
    case num.to_i
    when 10
      'ten'
    when 11
      'eleven'
    when 12
      'twelve'
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

  def read_singles(ones, tens = '')
    str = "#{tens} "
    case ones
    when 0
      str
    when 1
      str += 'one'
    when 2
      str += 'two'
    when 3
      str += 'three'
    when 4
      str += 'four'
    when 5
      str += 'five'
    when 6
      str += 'six'
    when 7
      str += 'seven'
    when 8
      str += 'eight'
    when 9
      str += 'nine'
    end
  end

  # Take a number (as a string) up to 3 digits long
  # Parce the place values
  # Process the values with the "read_X" functions
  def process_by_length(num)
    if num.length == 3
      hundreds = read_hundreds(num[0].to_i)
      tens_place = read_tens(num[1].to_i)
      tens_and_ones =  tens_place == 'ten' ? read_teens(num.slice(1..2)) : read_singles(num[2].to_i, tens_place)
    elsif num.to_s.length == 2
      tens_place = read_tens(num[0].to_i)
      tens_and_ones = tens_place == 'ten' ? read_teens(num) : read_singles(num[1].to_i, tens_place)
    else
      tens_and_ones = read_singles(num[0].to_i)
    end
    [hundreds, tens_and_ones]
  end

  # Process each factor of 1000 as its own group of hundreds, tens, and ones places
  # then append the correct multiple of 1000 word
  def in_words()
    return 'zero' if self == 0
    in_words = []
    factors = ['', 'thousand', 'million', 'billion', 'trillion']
    parts = separate_by_threes(self)
    parts.each_with_index do | part, i |
      hundreds, tens_and_ones = process_by_length(part)
      factor = part.to_i > 0 ? factors[i] : ''
      in_words.unshift("#{hundreds} #{tens_and_ones} #{factor}")
    end
    in_words.join(' ').split.join(' ')
  end

end