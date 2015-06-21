require 'pry'

class Fixnum

  def in_words
    num = self
    case num
    when 0..19
      num.num_less_than_20
    when 20..99
      num.num_less_than_100
    when 100..999
      num.bigger_num
    end
  end


  def num_less_than_20
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

  def num_less_than_100
    num = self
    if num % 10 == 0
      num.tens
    else
     (num / 10 * 10).tens + " #{(num % 10).num_less_than_20}"
   end
  end

  def bigger_num
#    binding.pry
    words=[]
    num = self
    case num
    when num < 1_000
      words << (num / 100).num_less_than_100 + " hundred"
      if num % 100 != 0
#        puts num % 100
        words << " #{(num%100).num_less_than_100}"
      end
      words.join (" ")
    when num < 1_000_000
      puts "what am I doing... there's an easier way"
    end
    words
  end

end

puts 71.in_words