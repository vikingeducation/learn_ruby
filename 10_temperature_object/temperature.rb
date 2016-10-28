 class Temperature

    def initialize(args={})
      
      @args = args

    end

    #attr_accessor :f, :c

    def in_degrees_fahrenheit

      return @args[:f] if @args.has_key?(:f)

    end

    def in_celsius

      if @args.has_key?(:f)
        (@args[:f] - 32.0) / 1.8
      elsif @args.has_key?(:c)
        @args[:c]
      else
      end

    end

    def in_degrees_celsius

      return @args[:c] if @args.has_key?(:c)

    end

    def in_fahrenheit

      if @args.has_key?(:c)
        (@args[:c] * 1.8 ) + 32
      elsif @args.has_key?(:f)
        @args[:f]
      else
      end
          
    end

    def self.from_celsius(num)

      Temperature.new(:c => num)

    end

    def self.from_fahrenheit(num)

     Temperature.new(:f => num)

    end

 end


