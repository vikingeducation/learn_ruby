def split_num_chunks(num)
  arr = []
  digits = Math::log10(num).floor + 1
  divisor = 1000 ** ((digits-1)/3)
  while num >= 1000
    arr << [num/divisor, divisor]
    num = num%divisor
    divisor = divisor/1000
  end
  arr << [num, 1]
  p arr
end

split_num_chunks 10000001