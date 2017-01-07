class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hrs = @seconds / 60 / 60
    mins = (@seconds - (hrs * 60 * 60)) / 60
    secs = @seconds - (hrs * 60 * 60) - (mins * 60)

    time = [hrs, mins, secs].map { |t| t.to_s.length == 1 ? "0#{t}" : t.to_s }

    "#{time[0]}:#{time[1]}:#{time[2]}"

  end
end