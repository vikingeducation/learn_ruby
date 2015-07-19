def translate(str)
  array_of_str = str.split(' ')
  if (array_of_str.size > 1)
    result = []
    array_of_str.each do |str_in_array|
      result.push(translate(str_in_array))
    end
    return result.join(' ')
  end


  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'ay'
  elsif str.include?("qu")
    peon = str.index("qu") + 2
    str[peon..-1] + str[0..(peon-1)] + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
    str[3..-1] + str[0..2] + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
    str # return unchanged
  end
end
# a e i o u