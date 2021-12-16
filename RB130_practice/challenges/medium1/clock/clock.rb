class Clock
  MINUTES_DAY = 1440
  MINUTES_HOUR = 60
  attr_accessor :total_minutes

  def self.at(hour, minutes=0)
    new(hour, minutes)
  end

  def initialize(hour, minutes)
    @total_minutes = (hour * MINUTES_HOUR) + minutes
  end

  def convert
    add_minutes if total_minutes < 0
    sub_minutes if total_minutes > 1440
    self.total_minutes = total_minutes.divmod(60)
  end

  def add_minutes
    until total_minutes > 0
      self.total_minutes += 1440
    end
  end

  def sub_minutes
    until total_minutes <= 1440
      self.total_minutes -= 1440
    end
  end

  def +(int)
    Clock.new(0, total_minutes + int)
  end

  def -(int)
    Clock.new(0, total_minutes - int)
  end

  def to_s
    if total_minutes.class == Array
      self.total_minutes = (total_minutes[0] * MINUTES_HOUR) + total_minutes[1]
    end
    convert
    format("%02d:%02d", total_minutes[0], total_minutes[1])
  end

  def ==(other)
    to_s == other.to_s
  end
end
