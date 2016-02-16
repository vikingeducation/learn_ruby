class Timer
    def initialize
        @timer = 0
    end

    def seconds=(seconds)
        @timer = seconds
    end

    def seconds
        @timer
    end

    def time_string
            @seconds = @timer % 60
            @minutes = @timer / 60
            @hours = (@minutes / 60)
            if(@minutes > 60)
                @minutes = (@timer / 60) % 60
            end

            return "%02d:" % @hours + "%02d:" % @minutes + "%02d" % @seconds
    end
end