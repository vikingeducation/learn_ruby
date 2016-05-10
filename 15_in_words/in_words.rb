class Fixnum
  def in_words
    queue = self.to_s.split('').map{|digit| digit.to_i}
    return_string = ""
    until queue.empty?
      current_place = queue.size
      current_digit = queue.shift
      case current_place % 3
      when 0 #hundreds place
        return_string += hundreds_place(current_digit)
      when 2 #tens place
        return_string += tens_place(current_digit, current_place, queue)
      when 1 #ones place
        if current_digit == 0 && return_string == ""
          return_string += "zero"
        else
          return_string += ones_place(current_digit, current_place)
        end
      end
    end
    return_string.strip
  end

  #Handles the hundreds place
  def hundreds_place current_digit
    return "" if current_digit == 0
    digit_helper(current_digit) + " hundred "
  end

  #Handles the tens place
  def tens_place current_digit, current_place, queue
    return_string = ""
    if current_digit > 1
      next_digit = queue.shift
      return_string += tens_helper(current_digit) + " "
      if next_digit == 0
        return_string += place_helper(current_place-1) + " "
      else
        return_string += digit_helper(next_digit) + " " + place_helper(current_place-1) + " "
      end
    elsif current_digit == 1
      num = (current_digit.to_s + queue.shift.to_s).to_i #shifts queue for next digit to handle teens
      return_string += teens_helper(num) + " " + place_helper(current_place-1) + " "
    end
    return_string
  end

  #Handles the ones place
  def ones_place current_digit, current_place
    return_string = ""
    if current_digit == 0
      place_helper(current_place) + " "
    else
      return_string += digit_helper(current_digit) + " " + place_helper(current_place) + " "
    end
    return_string
  end

  #Handles single digits
  def digit_helper digit
    digits = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
              6  => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    digits[digit]
  end

  #Handles tens-place words
  def tens_helper digit
    tens = {0=> "", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
            6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    tens[digit]
  end

  #Handles teens-words
  def teens_helper teen
    teens = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
             15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    teens[teen]
  end

  #Handles "place" words
  def place_helper place
    places = {13 => "trillion", 10 => "billion", 7 => "million", 4 => "thousand", 1 => ""}
    places[place]
  end
end
