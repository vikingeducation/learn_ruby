class Timer

    def initialize
        @seconds = 0
    end

    def seconds= secs
        @seconds = secs
    end

    def seconds
        @seconds
    end

    def time_string
        hours = @seconds / 60**2
        mins = (((@seconds.to_f / 60.0**2.0) - hours) * 60.0).to_i
        secs = (((((@seconds.to_f / 60.0**2.0) - hours) * 60.0) - mins) * 60.0).to_i
        "%02d:%02d:%02d" % [hours, mins, secs]
    end

end
