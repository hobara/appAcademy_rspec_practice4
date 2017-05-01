class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(num)
    num < 10 ? "0" + num.to_s : num.to_s
  end

  def time_string
    hour = padded(@seconds / 3600)
    minute = padded((@seconds - (3600 * (@seconds / 3600))) / 60)
    second = padded(@seconds % 60)
    "#{hour}:#{minute}:#{second}"
  end

end
