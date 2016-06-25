class Fixnum

  def in_words
    #make number into array of chars
    nums = self.to_s.chars.reverse
    #get array length
    length = nums.length
    break_times = length % 3 == 0 ? (length / 3) : (length/3) + 1

    #break up into groups of three
    nums_array = []
    index = 0
    break_times.times do 
      nums_array << nums.slice(index..index + 2).join.reverse.to_i
      index += 3
    end

    
    word_array = []
    nums_array.each do |slice|
      word = ""
      if number_words.keys.include?(slice)
        word << number_words[slice]
      elsif slice < 100
        tens = slice.to_s[0].to_i
        ones = slice.to_s[1].to_i
        word += number_words[tens * 10] + " " + number_words[ones]
      elsif slice < 1000
        hundreds = slice.to_s[0].to_i
        word += number_words[hundreds] + " hundred"
        if number_words.keys.include?(slice.to_s[1..2].to_i) && slice.to_s[2].to_i != 0
          word += " " + number_words[slice.to_s[1..2].to_i]
        else
          tens = slice.to_s[1].to_i
          ones = slice.to_s[2].to_i
          word += (tens > 0 ? " " + number_words[tens * 10] + (ones > 0 ? " " : "") : "") + (ones > 0 ? number_words[ones] : "")
        end
      end
      word_array << word  
    end
    
    final_word = ""

    if word_array.join('') == 'zero'
      final_word += 'zero'
    else
      if word_array.to_s == "zero"
        final_word += "zero"
      else
        word_array.each_with_index do |num_group, i|
          if i == 0 && num_group != "zero"
            final_word = num_group + final_word
          elsif i == 1 && num_group != "zero" 
            final_word = num_group + " " + "thousand" + (final_word == "" ? "" : " ") + final_word
          elsif i == 2 && num_group != "zero"
            final_word = num_group + " " + "million" + (final_word == "" ? "" : " ")+ final_word
          elsif i == 3 && num_group != "zero"
            final_word = num_group + " " + "billion" + (final_word == "" ? "" : " ")+ final_word
          elsif i == 4 && num_group != "zero"
            final_word = num_group + " " + "trillion" + (final_word == "" ? "" : " ")+ final_word
          end
        end
      end
    end
    final_word 


  end
 

  

  def number_words
    number_words = {
      90 => "ninety",   80 => "eighty",   70 => "seventy",
      60 => "sixty",    50 => "fifty",    40 => "forty",
      30 => "thirty",   20 => "twenty",   19 => "nineteen",
      18 => "eighteen", 17 => "seventeen",16 => "sixteen",
      15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
      12 => "twelve",   11 => "eleven",   10 => "ten",
      9  => "nine",     8  => "eight",    7  => "seven",
      6  => "six",      5  => "five",     4  => "four",
      3  => "three",    2  => "two",      1  => "one",
      0 => "zero"
    }
  end
end


