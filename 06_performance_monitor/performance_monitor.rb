def measure n=1
  (n-2).times do yield
  end

  if yield == nil
    time_taken =0
  else
    a=Time.now
    yield
    b=Time.now
    time_taken = b-a
  end
end
