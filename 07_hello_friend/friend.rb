

class Friend
    def greeting (who = nil)
        unless who
            "Hello!"
        else
            "Hello, #{who}!"
        end
    end

end
