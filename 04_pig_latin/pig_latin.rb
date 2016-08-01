def sch_join arr
    add=[]
    if arr[0] == 's' && arr[1] == 'c' && arr[2] == 'h'
      add = arr[0..2].join
      arr -= ['s','c','h']
      arr.unshift(add)
    end
    return arr
  end

def qu_join arr
  arr.length.times do |i|
    if arr[i] == 'q' && arr[i+1] == 'u'
      arr[i] += arr[i+1]
      arr.delete_at(i+1)
    end
  end
  return arr
end




def translate string
  vowel =['a','e','i','o','u']
  arr = string.split(" ")


  arr = sch_join arr
  arr = qu_join arr

  if arr[0] == "sch"
    a = arr.shift
    arr.push(a)
  end
   a
  arr.length.times  do |i|

    until vowel.include? arr[i]

      a = arr.shift
      arr.push(a)
    end

    if vowel.include? arr[i]
      arr <<['a','y']
      break
    end





  end
  string = arr.join
end

def translate_words
