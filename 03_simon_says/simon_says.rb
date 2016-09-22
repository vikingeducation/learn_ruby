def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, times = 2)
  return ((string + " ") * times).strip
end

def start_of_word(word, howmany)
  letter_array = word.chomp.split(//)[0...howmany]
  if howmany == 1
   return letter_array[0]
  else
    return letter_array.join("")
  end
end

def first_word(word)
  return word.chomp.split.first
end

def titleize(string)
  stringarray = string.split
  firstword = true
  stringarray.each do |word|
    if firstword == true
      word.capitalize!
      firstword = false
    end
    unless word == "the" || word == "and" || word == "over"
      word.capitalize!
    end
  end
  return stringarray.join(" ")
end