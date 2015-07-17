def echo(string)
  string
end

def shout(string)
  string.upcase!
end

def repeat(string, number = 2)
  new_string = " "+string
  (1...number).each do 
    string+=new_string
  end
  string
end

def start_of_word(string, index)
  string[0...index]
end

def first_word(string)
  return_string = ""
  (0..string.length).each do |i|
    if string[i] == " "
      break
    end
    return_string += string[i]
  end
  return_string
end

def titleize(string)
  array = string.split
    (0...array.length).each do |i|
      if array[i].length > 4 || i == 0 || i == array.length-1
        array[i].capitalize!
      end
    end
    string= array.join(' ')
    string
end

titleize("the bridge over the river kwai")