require 'pry'

class Fixnum

  def in_words
    @@num_string = ""
    num = self
    @@num_array = num.to_s.delete('_').split('')
    size_checker
  end

  private

  def size_checker
    case @@num_array.length
    when 1
      ones
    when 2
      tens
    when 3
      hundreds
    when 4..6
      thousands
    when 7..9
 
      millions
    when 10..12
      billions
    when 13..15
      trillions
    end
    size_checker until @@num_array.empty?
    @@num_string.strip
  end

  def ones
    ones_hash = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine' }
    @@num_string += " " + ones_hash[@@num_array.shift.to_i]
  end

  def tens
    if @@num_array.slice(0,2).join('').to_i >= 20
      above_twenty
    else
      teens
    end
  end

  def teens
    teens_hash = { 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
    @@num_string += " " + teens_hash[@@num_array.slice(0,2).join('').to_i]
    @@num_array.shift(2)
  end

  def above_twenty
    tens_hash = { 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}
    if @@num_array.slice(0,2).join('').to_i % 10 != 0
      n = @@num_array.shift + "0"
      @@num_string += " " + tens_hash[n.to_i]
    else
      @@num_string += " " + tens_hash[@@num_array.slice(0,2).join('').to_i]
      @@num_array.shift(2)
    end
  end

  def hundreds
    hundreds_hash = { 100 => 'one hundred', 200 => 'two hundred', 300 => 'three hundred', 400 => 'four hundred', 500 => 'five hundred', 600 => 'six hundred', 700 => 'seven hundred', 800 => 'eight hundred', 900 => 'nine hundred'}
    if @@num_array.slice(0,3).join('').to_i % 100 != 0
      n = @@num_array.shift + "00"
      @@num_string += " " + hundreds_hash[n.to_i]
    else
      @@num_string += hundreds_hash[@@num_array.join('').to_i]
      @@num_array.shift(3)
    end
  end

  def thousands
    while @@num_array.length >= 4 
      if @@num_array.length == 4
        ones
      elsif @@num_array.length == 5
        tens
      else
        hundreds
      end
    end
    @@num_string += " " + 'thousand'
    while @@num_array[0] == "0"

      @@num_array.delete_at(0)
    end
  end

  def millions
    while @@num_array.length >= 7 
      if @@num_array.length == 7
        ones
      elsif @@num_array.length == 8
        tens
      else
        hundreds
      end
    end
    @@num_string += " " + 'million'
    while @@num_array[0] == "0"
      @@num_array.delete_at(0)
    end
  end

  def billions
    while @@num_array.length >= 10 
      if @@num_array.length == 10
        ones
      elsif @@num_array.length == 11
        tens
      else
        hundreds
      end
    end
    @@num_string += " " + 'billion'
    while @@num_array[0] == "0"
      @@num_array.delete_at(0)
    end
  end

  def trillions
    while @@num_array.length >= 13 
      if @@num_array.length == 13
        ones
      elsif @@num_array.length == 14
        tens
      else
        hundreds
      end
    end
    @@num_string += " " + 'trillion'
    while @@num_array[0] == "0"
      @@num_array.delete_at(0)
    end
  end

end

