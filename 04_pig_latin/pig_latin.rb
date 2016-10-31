def translate(word)
  vowels = ['a','e','i','o','u']

  pre_latin = word.split(" ")

  arr=[]

  pre_latin.each do |piggy|

    if vowels.include?(piggy[0])
      arr.push(piggy + "ay")
    elsif piggy[0..1] == "qu"
      arr.push(piggy[2..(piggy.length-1)] + piggy[0..1] + "ay")
    elsif vowels.include?(piggy[1])
      arr.push(piggy[1..(piggy.length-1)] + piggy[0] + "ay")
    elsif vowels.include?(piggy[2])
      arr.push(piggy[2..(piggy.length-1)] + piggy[0..1] + "ay")
    else
      arr.push(piggy[3..(piggy.length-1)] + piggy[0..2] + "ay")
    end
  end
  latinized = arr.join(" ")
end