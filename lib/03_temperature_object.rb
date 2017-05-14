class Temperature

  def initialize(input = {})
    @input = input
  end

  def in_fahrenheit
    @input.has_key?(:f) ? @input[:f] : (@input[:c] * 9.0 / 5.0) + 32.0
  end

  def in_celsius
    @input.has_key?(:c) ? @input[:c] : (@input[:f] - 32.0) * 5.0 / 9.0
  end

  def self.from_fahrenheit(num)
    self.new(:f => num)
  end

  def self.from_celsius(num)
    self.new(:c => num)
  end

end

class Celsius < Temperature

  def initialize(num, input = {})
    @input = input
    @input[:c] = num
  end

end

class Fahrenheit < Temperature

  def initialize(num, input = {})
    @input = input
    @input[:f] = num
  end

end
