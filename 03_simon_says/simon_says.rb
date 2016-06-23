def echo(word)
  p word
end

def shout(word)
  p word.upcase
end

def repeat (word, n = 2)
  string = ''
  n.times { |time| string << word + ' '}
  string.strip
end

def start_of_word(word, n)
  word[0..n-1]
end

def first_word(phrase)
  phrase.split(' ').first
end

def titleize(phrase)
   words = phrase.split(' ')
   array = []
   words.each_with_index do |word, index|
    if index==0
      array << word.capitalize
    elsif ['the', 'and', 'over'].include?(word) 
      array << word
    else
      array << word.capitalize
    end
  end 


   
    
  array.join(' ')
  
  
end