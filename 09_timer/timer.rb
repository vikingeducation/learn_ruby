class Timer
  def initialize
    @s=0
  end

  def seconds=(s=0)
    @s=s
  end

  def seconds
    @s
  end

  def time_string
    h=@s/3600
    m=@s/60%60
    s=@s%60
    h.to_s.rjust(2, "0")+":"+m.to_s.rjust(2, "0")+":"+s.to_s.rjust(2, "0")
  end
end