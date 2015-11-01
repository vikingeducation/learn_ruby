def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string,number_times=2)
  return ("#{string} "*number_times).strip
end

def start_of_word(string,number_letters)
  return string.slice(0...number_letters)
end

def first_word(string)
  word_array = string.split(" ")
  return word_array[0]
end

def titleize(string)
  unimportant = ["and", "the", "over"]
  word_array = string.split(" ")
  word_array.each_index do |index|
    word_array[index].strip
    if index == 0 or !unimportant.include?(word_array[index])
      word_array[index].capitalize!
    end
    word_array[index] = "#{word_array[index]} "
  end
  return word_array.join.strip
end