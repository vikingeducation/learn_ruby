def measure(passes = 1)
  if block_given?
    start_time = Time.now
    passes.times do |pass|
      yield
    end
    return (Time.now - start_time) / passes.to_f
  end

  start_time = Time.now
  Time.now - start_time
end