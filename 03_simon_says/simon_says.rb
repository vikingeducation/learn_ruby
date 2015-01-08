def echo(echo_this)
  return echo_this
end

def shout(shout_this)
  return shout_this.upcase
end

def repeat(repeat_this, number_of_times=1)
  if (number_of_times == 1)
    repeat_this + " " + repeat_this
  else
    ([repeat_this] * number_of_times).join(' ')
  end
end

def start_of_word(first, second)
  return first[0..second-1]
end

def first_word(sentence_to_be_split)
  return sentence_to_be_split.split.first
end

def titleize(capitalize_this)
    first_letter = true
    words = capitalize_this.split
    words.each do |word|
        if (word.length <=3 && first_letter == true)
          word.capitalize!
          first_letter = false
        elsif word.length <= 3
          word.downcase!
        elsif word == "over"
          word.downcase!
        else 
          word.capitalize!
        end
    end
    words.join ' '
end