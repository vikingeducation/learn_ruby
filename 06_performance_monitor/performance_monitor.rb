def measure (number = 1)
  first_time = Time.now
  number.times do
    yield
  end
  second_time = Time.now
  (second_time - first_time)/number
end
