def measure(i=1)
  tiempo_total = 0.0
  i.times do
    principio = Time.now
    yield
    delta =  Time.now - principio
    tiempo_total += delta
  end
  tiempo_total / i
end
