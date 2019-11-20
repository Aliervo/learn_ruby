class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    remaining_seconds = @seconds % 60
    minutes = (@seconds - remaining_seconds) % 3600 / 60
    hours = (@seconds - minutes - remaining_seconds) / 3600
    "#{'%02d' % hours}:#{'%02d' % minutes}:#{'%02d' % remaining_seconds}"
  end
  
  #padded method unused, just wanted ensure all tests would clear
  def padded number
    '%02d' % number
  end
end
