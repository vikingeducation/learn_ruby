def echo(word)
  word
end

def shout(word)
  word.upcase
end 

def repeat(word, x=2)
  ((word + " ") * x).rstrip
end

def start_of_word(word, x)
  word[0...x]
end

def first_word(str)
  str.split(" ")[0]
end

def titleize (str)
    little_words = ["a","the", "of", "and" ,"or", "over"]
    arr = str.split(" ")
    ans = []
    arr.each do |word|
     little_words.include?(word) ? ans << word : ans << word.capitalize
    end
    ans[0].capitalize!
    ans.join(" ")
    
end


