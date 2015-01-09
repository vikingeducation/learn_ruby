class Timer
  attr_reader: seconds
  def seconds=(set_seconds=0)
    seconds = set_seconds
  end

  def time_string
    
    @time_string
  end
end


=begin
  
rescue Exception => e
  
end
some_int = 5
some_int.to_s.rjust(2, '0')  # => '05'
some_int.to_s.rjust(5, '0')  # => '00005'

another_int = 150
another_int.to_s.rjust(3, '0') # => '150'
another_int.to_s.rjust(5, '0') # => '00150'