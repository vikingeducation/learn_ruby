def measure(num=1)
  run_times = []
  (1..num).each do |n|
    beginning_time = Time.now
    yield
    end_time = Time.now
    run_times.push(end_time - beginning_time)
  end
  run_times.inject{ |sum, element| sum + element }.to_f / run_times.size
end