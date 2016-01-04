class Fixnum

  def in_words
    word = ""
    number = self.to_s
    word_hash = {"0" => "zero", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen", "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety"}
    digit_blocks = []

    unless number.length <= 3
      until number.length < 3
        digit_blocks << number.slice!(-3..-1)
      end
    end
    # remember this is reversed for now, ones, then thousands, then millions, and so on
    digit_blocks << sprintf("%03d", number)

    # array of word descriptions of blocks, still reversed for now
    block_string_array = []

    # Iterating over the 3-digit blocks (thousands, millions, etc.)
    if digit_blocks == ["000"]
      word = "zero"
    else
      digit_blocks.each_index do |place|
        block_string = ""
        block = digit_blocks[place]
              
        hundreds_digit = block[0]
        tens_digit = block[1]
        tens_block = tens_digit + "0"
        ones_digit = block[2]

        unless hundreds_digit == "0"
          block_string << "#{word_hash[hundreds_digit]} hundred "
        end

        if tens_digit == "1"
          block_string << "#{word_hash[block[1..2]]}"
        elsif tens_digit == "0"
          unless ones_digit == "0"
            block_string << "#{word_hash[ones_digit]}"
          end
        else
          block_string << "#{word_hash[tens_block]}"
          unless ones_digit == "0"
            block_string << " #{word_hash[ones_digit]}"
          end
        end

        # Adding each 3-digit block word description to the array
        block_string_array << block_string
      end
    end

    # Adding place descriptions to the word blocks up to trillions
    (0..block_string_array.length-1).each do |index|
      block_string_array[index].strip
      case index
      when 1
        unless block_string_array[index] == ""
          block_string_array[index] += " thousand"
        end
      when 2
        unless block_string_array[index] == ""
          block_string_array[index] += " million"
        end
      when 3
        unless block_string_array[index] == ""
          block_string_array[index] += " billion"
        end
      when 4
        unless block_string_array[index] == ""
          block_string_array[index] += " trillion"
        end
      end
    end

    # Finally reversing the blocks to correct numerical order
    block_string_array.reverse!

    # And removing any empty strings that may have sneaked in
    block_string_array.delete("")

    # And concatenating the whole lot
    if word == ""
      word = block_string_array.join(" ")
    end
    word.strip
  end
end