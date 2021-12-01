class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def see_switch
    "Currently the switch is #{switch}"
  end

  private

  attr_accessor :switch  

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

x = Machine.new 
p x.stop
p x.start
p x.see_switch