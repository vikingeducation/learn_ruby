class Timer

attr_accessor :seconds
  def initialize (seconds = 0)
    @seconds = seconds
  end

  def time_string
    
    formatted_seconds = format('%02d', (@seconds % 60))
    formatted_minutes = format('%02d', (@seconds-((@seconds/3600)*3600)) / 60)
    formatted_hours = format('%02d', @seconds /3600)

    "#{formatted_hours}:#{formatted_minutes}:#{formatted_seconds}"
  end
end
