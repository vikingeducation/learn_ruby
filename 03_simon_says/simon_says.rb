def echo(greeting)
  greeting
end

def shout(greeting)
  greeting.upcase
end

def repeat(greeting, times = 2)
  greeting = greeting << " "
  greeting = greeting * times
  greeting.strip
end

def start_of_word(word, start)
  word[0...start]
end

def first_word(string)
  string.split[0]  
end

def titleize(title)
  exclusions = %w(a an the of over and in to for under)
  new_title = []
  title_words = title.split
  new_title << title_words[0].capitalize
  title_words[1..-1].each do |word|
    if exclusions.include?(word)
      new_title << word
    else
      new_title << word.capitalize
    end
  end

  new_title.join(" ")

  end