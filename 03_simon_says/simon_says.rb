def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n = 2)
  string += " "
  string *= n
  string[0..-2]
end

def start_of_word(string, n)
  string[0..n-1]
end

def first_word(string)
  string[0...string.index(" ")]
end

def titleize(string)
  array = string.split(" ")
  array.map! do |x|
    if array.index(x) == 0
      x.capitalize
    elsif x == "and" || x == "the" || x == "over"
      x
    else
      x.capitalize
    end
  end
  string = array.join(" ")
end
