class Switch
  
  attr_accessor :state
  
  def initialize(state)
    @state = state
  end

end

switch = Switch.new(:off)
switch.state = :on