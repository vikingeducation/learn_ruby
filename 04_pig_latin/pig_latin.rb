def translate(words)

  out_word_arr = []
  in_word_arr = words.split

  in_word_arr.each do |e|

    chars = e.chars
    #if chars[0] == "a" || chars[0] == "e" || chars[0] == "i" || chars[0] == "o" || chars[0] == "u"
    if chars[0] =~ /[aeiou]/
      vowel = chars[0]
      chars.push("ay")
      out_word_arr.push(chars.join)

    elsif chars[0] == "t" && chars[1] == "h" && chars[2] == "r"
      t = chars[0]
      u = chars[1]
      v = chars[2]

      3.times { chars.delete_at(0) }
      chars.push(t).push(u).push(v).push("ay")
      out_word_arr.push(chars.join)

    elsif chars[0] == "s" && chars[1] == "c" && chars[2] == "h"
      t = chars[0]
      u = chars[1]
      v = chars[2]

      3.times { chars.delete_at(0) }
      chars.push(t).push(u).push(v).push("ay")
      out_word_arr.push(chars.join)

    elsif chars[0] == "q" && chars[1] == "u"
      t = chars[0]
      u = chars[1]

      2.times { chars.delete_at(0) }
      chars.push(t).push(u).push("ay")
      out_word_arr.push(chars.join)

    elsif chars[0] !~ /[aeiou]/ && chars[1] == "q" && chars[2] == "u"
      t = chars[0]
      u = chars[1]
      v = chars[2]

      3.times { chars.delete_at(0) }
      chars.push(t).push(u).push(v).push("ay")
      out_word_arr.push(chars.join)

    elsif chars[0] !~ /[aeiou]/ && chars[1] !~ /[aeiou]/
      t = chars[0]
      u = chars[1]
      #v = chars[2]

      2.times { chars.delete_at(0) }
      chars.push(t).push(u).push("ay")
      out_word_arr.push(chars.join)

    else
      t = chars[0]
      chars.delete_at(0)
      chars.push(t).push("ay")
      puts chars.join
      out_word_arr.push(chars.join)
    end

  end

  out_word_arr = out_word_arr.join(" ")
  puts out_word_arr
  out_word_arr
end

translate("Shut the front door")
