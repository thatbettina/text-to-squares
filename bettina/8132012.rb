class Room
  class << self
    def names
      @names ||= ['Kitchen', 'Dining Room', 'Office']
    end
  end

  def initialize
    @name = Room.names.shuffle!.pop
  end
end

puts Room.names



#class Switch
#    
#  def initialize(state)
#    @state = state
#  end
#  
#  def flip
#    
#  end
#
#end
#
#switch = Switch.new(:off)
#switch.state = :on