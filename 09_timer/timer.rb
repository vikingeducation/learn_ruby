class Timer

  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def seconds=(new_seconds)
    @seconds = new_seconds
  end

  def time_string
    hrs = sprintf('%02d', seconds / 3600)
    mins = sprintf('%02d', (seconds % 3600) / 60)
    secs = sprintf('%02d', seconds % 60)

    "#{hrs}:#{mins}:#{secs}"
  end
end