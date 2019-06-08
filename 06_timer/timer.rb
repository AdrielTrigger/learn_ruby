class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
    @time_string
  end

  def time_string
    h = 0
    min = 0
    sec = 0
    time_left = @seconds

    while (time_left >= 3600)
      time_left -= 3600
      h += 1
    end
    if (h < 10)
      h_string = "0" + h.to_s
    else
      h_string = h.to_s
    end

    while (time_left >= 60)
      time_left -= 60
      min += 1
    end
    if (min < 10)
      min_string = "0" + min.to_s
    else
      min_string = min.to_s
    end

    sec = time_left

    if (sec < 10)
      sec_string = "0" + sec.to_s
    else
      sec_string = sec.to_s
    end

    @time_string = h_string + ":" + min_string + ":" + sec_string
  end

end