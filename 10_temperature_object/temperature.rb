class Temperature
  def initialize(options = {})
    @options = {f: 50}
  end

  def in_fahrenheit(fahr = 50)
    if fahr != 50
      ((@options[:f] = fahr) - 32) * 5/9
    else
      @options[:f]
    end
  end

  def in_celsius(celc = 0)
    if celc != 0
      (@options[:c] = celc) * 9/5 + 32
    else
      celc
    end
  end
end
