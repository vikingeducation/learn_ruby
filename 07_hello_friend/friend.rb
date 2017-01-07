class Friend
    def greeting(name = nil)
        if(!name.nil?)
            "Hello, #{name}!"
        else
            "Hello!"
        end
    end
end