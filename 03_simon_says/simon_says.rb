def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n=2)
#  array where each element is str and there are n of them.
  arr = []
  n.times{arr.push(str)}
  return arr.join(" ")
#  then i can join them with a space and return that
 # return str+" "+str
end

def start_of_word(word, int)
  word[0..(int-1)]
end

def first_word(str)
  arr = str.split(" ")
  return arr[0]
end

def titleize(str)
  little_words = ['and', 'the', 'over']
  arr = str.split(" ")
  upcase_array = []
  i = 0
  arr.each do |word|
    i += 1 
    if little_words.include?(word) && i != 1
      upcase_array.push(word)
    else  
      upcase_array.push(word.capitalize)
    end
  end
  new_str = upcase_array.join(" ")

end