class Temperature
  def initialize(temp_hash)
    @temp_hash = temp_hash
    @results = 0
  end

  def in_fahrenheit
    @temp_hash.each do |type, temp|
      if type != :f
        @results = ((temp * 1.8) + 32.0)
      else
        @results = temp
      end
    end
    @results
  end

  def in_celsius
    @temp_hash.each do |type, temp|
      if type == :f
        @results = ((temp - 32.0) * 5.0/9.0) #(temp * 1.8) + 32.0
      else
        @results = temp
      end

    end
    @results
  end

  def self.from_celsius(temp)
    Temperature.new(c: temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(f: temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    @temp_hash = {c: temp}
    @results = 0
  end
end
class Fahrenheit < Temperature
  def initialize(temp)
    @temp_hash = {f: temp}
    @results = 0
  end
end