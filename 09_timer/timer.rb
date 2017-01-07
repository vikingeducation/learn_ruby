class Timer
  def initialize
    @seconds = 0
  end

  def seconds=n
    @seconds = n
  end

  def seconds
    @seconds
  end

  def time_string
    array = [0, 0, 0]
    array[0] = @seconds/3600
    array[1] = (@seconds%3600)/60
    array[2] = ((@seconds%3600)%60)
    array.map! {|x| x.to_s.rjust(2,"0")}
    array.join(":")
  end

end
