require 'byebug'

def translate (str)
  vowel=["a","e","i","y","o","u"]
  #other=["sch", "qu"]
  output = String.new
  
  str.split(" ").each do |word|
    if vowel.any? { |letter| word[0]==letter }
      word<<"ay"
      
    else
      
      until vowel.any? { |letter| word[0]==letter }
        if word[0]=="q" && word[1]=="u" 
          word<<word[0..1]
          word=word[2..word.length]
        else
          word<<word[0]
          word=word[1..word.length]
        end
      end
      word<<"ay"

    end  
    output << " #{word}"
  end

  output=output[1..output.length]
end
#puts translate("cherry")

