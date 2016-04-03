
def measure(reps=1)
  @runs=0
  begin_time = Time.now
  reps.times{yield}
  end_time = Time.now
  (end_time-begin_time)/reps
end

