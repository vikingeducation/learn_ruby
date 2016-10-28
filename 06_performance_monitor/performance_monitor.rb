def measure(num=1)
  first_time = Time.now

  num.times { |item| yield }

  second_time = Time.now

  elapsed_time = (second_time - first_time)/num
end