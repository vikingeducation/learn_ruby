def echo(input)
  input
end

def shout(input)
  out = input.upcase
end

def repeat(input, how_many_times=2)
  out = input + ( " #{input}" * ( how_many_times - 1 ))
end

def start_of_word(string, index=0)
  out = string[0..index-1]
end

def first_word(string)
  array = string.split(" ")
  out = array[0]
end

def titleize(string)
  array = string.split(" ")
  array = array.each_with_index { |item, index|
    item.capitalize! unless item == "and" || ( item == "the" && index != 0 ) || item == "over"
  }
  out = array.join(" ")
end