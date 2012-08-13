class Switch
  def initialize(state)
    @state = state
  end
  
  def state
    @state
  end
  
  def state=(state)
    @state=state
    puts "setting state to #{state.inspect}"
  end
end

switch = Switch.new(:off)
switch.state = :on