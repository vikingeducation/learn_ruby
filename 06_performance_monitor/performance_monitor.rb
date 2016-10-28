def measure(count=1)
  recorded_times = []
  count.times do
    start = Time.now
    yield
    finish = Time.now
    recorded_times.push(finish - start)
  end
  sum_of_times = recorded_times.reduce(0){|sum, x| sum + x}
  sum_of_times / count
end
