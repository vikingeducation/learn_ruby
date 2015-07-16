class Temperature

      def initialize(degrees)
        @degrees = degrees
      end

  def in_fahrenheit
       @degrees[:f] ? @degrees[:f] : @degrees[:c] * (9.0 / 5.0) + 32
  end

  def in_celsius 
    @degrees[:f] ? (@degrees[:f] - 32) * (5.0 / 9.0) : @degrees[:c]

end


end