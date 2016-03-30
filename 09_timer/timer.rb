class Timer
    attr_accessor :seconds
    def initialize
        @seconds =0;
    end
    
    def time_string
        secs = @seconds%60
        mins = (@seconds-secs)/60
        hours= mins/60
        mins = mins%60
        
        result = make_string(hours)+":"+make_string(mins)+":"+make_string(secs)
        return result
    end
    
    def make_string (number)
        if(number<10)
            return "0"+number.to_s
        else
            return number.to_s
        end
    end
    
end