class Timer
  attr_accessor :seconds
  def seconds
    @seconds=0
  end
  def time_string
    hh="00"
    mm="00"
    ss="00"
    if @seconds <= 9
      ss = "0"+@seconds.to_s
    elsif @seconds <= 59
      ss = @seconds
      if ss <= 9
        ss = "0"+ss
      end
    elsif @seconds <= 3599
      mm = @seconds/60
      ss = @seconds%60
      if ss <= 9
        ss = "0"+ss.to_s
      end
      if mm <= 9
        mm = "0"+mm.to_s
      end
    else
      hh= @seconds/3600
      mm = @seconds%3600/60
      ss = @seconds%60
      if ss <= 9
        ss = "0"+ss.to_s
      end
      if mm <= 9
        mm = "0"+mm.to_s
      end
      if hh <= 9
        hh = "0"+hh.to_s
      end
    end
    @time_string = hh.to_s + ":" + mm.to_s + ":" + ss.to_s
  end
end




# hh:mm:ss
