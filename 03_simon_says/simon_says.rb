def echo(word)
  "#{word}"
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  line=""
  n.times {line<<" #{word}"}
  line
end

def start_of_word(word, n=1)
  str=""
  index=0
  while index<n do
   str<<word.split("")[index]
   index+=1
  end
  str
end

def first_word(str)
   str.split(" ")[0]      
end

def titleize(str)
  
    if str.include?(" ")
      little_words=["and","over","the"]
      arr=[]
      str.split(" ").each do |word|
        if little_words.include?(word)
          arr<<"#{word}"
        else
          arr<<"#{word.capitalize}"
        end
      end
      arr[0]=arr[0].capitalize
      arr.join(" ")
    else
    str.capitalize
    end

end

