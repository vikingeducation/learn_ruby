def echo(string)
  string
end


def shout(string)
  string.upcase!
end

def repeat(string, num=2)
  new_string = string + " "
  new_string * (num -1) + string
end


def start_of_word(string, num)
  string_array = string.split("")
  new_array = []
  new_array << string_array[0..(num - 1)]
  new_array.join("")
end


def first_word(string)
  string_array = string.split(" ")
  string_array[0]
end


def titleize(string)
  string_array = string.split(" ")
  string_array.each do |word|
    if word.length > 4
      word.capitalize!
    elsif word.length <= 4 && (word == string_array[0] || word == string_array[-1])
      word.capitalize!
    end
  end
  string_array.join(" ")
end
