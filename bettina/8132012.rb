class Switch
  def initialize(state)
    @state = state
  end
  
  def state
    @state
  end
  
  def flip
    if @state == :off
      @state = :on
    else
      @state = :off
    end
    
    @state = ((@state == :off ?) :on : :off)
  end
end

switch = Switch.new(:off)
if switch.state == :on
  puts "the switch is on"
else
  puts "the switch is off"
end

# set internal state of the switch to :on
switch.flip