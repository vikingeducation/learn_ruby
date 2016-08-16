def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num_times=2)
  "#{word} " * (num_times - 1) + "#{word}"
end

def start_of_word(word, num_chars)
  word[0...num_chars]
end

def first_word(sentance)
  sentance.split(" ")[0]
end

def titleize(sentance)
  little_words = ["THE", "OVER", "AND"]
  sentance.split(" ").each_with_index.map do |word, index|
    word.capitalize! unless little_words.include?(word.upcase) 
    word.capitalize! if index == 0
    word
  end.join(" ")
end
