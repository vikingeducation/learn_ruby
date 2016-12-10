Fixnum.class_eval do

  def smallWord(num)  
    nums_list1 = [ 'zero', 'one', 'two', 'three', 'four', 'five', 
              'six', 'seven', 'eight', 'nine', 'ten',
              'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
              'sixteen', 'seventeen', 'eighteen', 'nineteen'
    ]

    nums_list2 = { 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety',
    }

    return nums_list1[num] if num < 20
    tens = num / 10 * 10
    ones = num % 10
    result = nums_list2[tens]
    result = result + ' ' + nums_list1[ones] unless ones == 0
    return result
  end


  def bigWord(num, size, label)
    result = wordify(num / size)
    result += ' ' + label + ' '
    if num % size != 0
      result += wordify(num % size) 
    end

    return result
  end


  def wordify(num)
    return smallWord(num) if num < 100

    len = num.to_s.length
    return bigWord(num, 100, 'hundred').strip if len < 4
    return bigWord(num, 1000, 'thousand').strip if len < 7
    return bigWord(num, 1000000, 'million').strip if len < 10
    return bigWord(num, 1000000000, 'billion').strip if len < 13
    return bigWord(num, 1000000000000, 'trillion').strip if len < 16
  end


  def in_words
    wordify(self)
  end

end

#This was not completed by me. Was completed by 
#https://github.com/afshinator/playground/blob/master/TestFirstRubyExercises/15_in_words/solution/in_words.rb
#I had trouble with this problem and used for for
#education purposes