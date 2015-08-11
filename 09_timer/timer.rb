#timer

class Timer
    
    def initialize
        @seconds = 0
        @time_string = "00:00:00"
    end
    
    def seconds=(value)
        @seconds = value
        
    end
    
    def seconds
        @seconds
    end
    
    def time_string
        hh = @seconds / 3600
        mm = (@seconds - hh*3600) / 60
        ss = @seconds - mm*60 - hh*3600
        
        
        
        "#{pad_zero(hh)}:#{pad_zero(mm)}:#{pad_zero(ss)}"
    end
    
    def pad_zero(n)
        if (n.to_s.chars.size >= 2)
            return n
        elsif (n.to_s.chars.size == 1)
            return n.to_s.chars.unshift("0").join
        else
            return
        end
    end
    
end
        