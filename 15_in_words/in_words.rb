class Fixnum
   def in_words_helper num
     case num
     when 0 then 'zero'
     when 1 then 'one'
     when 2 then 'two'
     when 3 then 'three'
     when 4 then 'four'
     when 5 then 'five'
     when 6 then 'six'
     when 7 then 'seven'
     when 8 then 'eight'
     when 9 then 'nine'
     when 10 then 'ten'
     when 11 then 'eleven'
     when 12 then 'twelve'
     when 13 then 'thirteen'
     when 14 then 'fourteen'
     when 15 then 'fifteen'
     when 16 then 'sixteen'
     when 17 then 'seventeen'
     when 18 then 'eighteen'
     when 19 then 'nineteen'
     when 20 then 'twenty'
     when 30 then 'thirty'
     when 40 then 'forty'
     when 50 then 'fifty'
     when 60 then 'sixty'
     when 70 then 'seventy'
     when 80 then 'eighty'
     when 90 then 'ninety'
     else
       "Something wrong!"
     end
   end


  def in_words
    # binding.pry
    case self
    when 0 then 'zero'
    when 1 then 'one'
    when 2 then 'two'
    when 3 then 'three'
    when 4 then 'four'
    when 5 then 'five'
    when 6 then 'six'
    when 7 then 'seven'
    when 8 then 'eight'
    when 9 then 'nine'
    when 10 then 'ten'
    when 11 then 'eleven'
    when 12 then 'twelve'
    when 13 then 'thirteen'
    when 14 then 'fourteen'
    when 15 then 'fifteen'
    when 16 then 'sixteen'
    when 17 then 'seventeen'
    when 18 then 'eighteen'
    when 19 then 'nineteen'
    when 20 then 'twenty'
    when 30 then 'thirty'
    when 40 then 'forty'
    when 50 then 'fifty'
    when 60 then 'sixty'
    when 70 then 'seventy'
    when 80 then 'eighty'
    when 90 then 'ninety'
    else
      result = []
      trillions     = self / 1_000_000_000_000
      billions      = (self - trillions * 1_000_000_000_000) / 1_000_000_000
      millions      = (self - trillions * 1_000_000_000_000 - billions * 1_000_000_000) / 1_000_000
      thousands     = (self - trillions * 1_000_000_000_000 - billions * 1_000_000_000 - millions * 1_000_000) / 1_000
      hundreds      = (self - trillions * 1_000_000_000_000 - billions * 1_000_000_000 - millions * 1_000_000 - thousands * 1_000) / 100
      tens          = (self - trillions * 1_000_000_000_000 - billions * 1_000_000_000 - millions * 1_000_000 - thousands * 1_000 - 100 * hundreds) / 10
      singles       =  self - trillions * 1_000_000_000_000 - billions * 1_000_000_000 - millions * 1_000_000 - 1_000 * thousands - 100 * hundreds - 10 * tens
      if tens == 1
        tens = 0
        singles += 10
      end
      result << "#{hundreds_helper(trillions)} trillion" if trillions > 0
      result << "#{hundreds_helper(billions)} billion" if billions > 0
      result << "#{hundreds_helper(millions)} million" if millions > 0
      result << "#{hundreds_helper(thousands)} thousand" if thousands > 0
      result << "#{in_words_helper(hundreds)} hundred" if hundreds > 0
      result << "#{in_words_helper(tens * 10)}" if tens > 0
      result << "#{in_words_helper singles}" if singles > 0
      result.join(" ")
    end
  end

  def hundreds_helper num
    # binding.pry
    result = []
    hundreds = num / 100
    tens = (num - hundreds * 100) / 10
    singles = num - tens * 10 - hundreds * 100
    if tens == 1
      tens = 0
      singles += 10
    end
    result << "#{in_words_helper(hundreds)} hundred" if hundreds > 0
    result << "#{in_words_helper(tens * 10)}" if tens > 0
    result << "#{in_words_helper singles}" if singles > 0
    result.join(" ")
  end
end
