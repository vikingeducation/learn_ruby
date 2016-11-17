# TDD RSpec
# performance_monitor.rb

def measure(n=1)
  time_start = Time.now
  if (n>1)
    n.times do
      yield
    end
  else
    yield
  end

  (Time.now - time_start) / (n=1 ? 1 : n)
end

measure do
end

measure(4) do
end