
class Timer

    attr_accessor :seconds
    def initialize
        @seconds = 0
    end

    def time_string
        display_seconds = @seconds % 60
        total_minutes = @seconds / 60
        display_mintues = total_minutes % 60
        display_hours = total_minutes / 60

        "%02d:%02d:%02d" % [ display_hours, display_mintues, display_seconds]
    end

end


