def translate (word)
    result =""
    word= word.split
    #word has become an array of words to be translated into pig latin
    word.map! do |a|
        while ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"].include?(a[0])
          if a[0..1] == "qu"
              a = a[2..-1]+"qu"
          else
          a=  a[1..-1]+a[0]
          end
        end
        a = a +"ay"
    end
    word.each do |a|
        result = result +" "+a
    end
    return result.strip
end