class Players
  attr_accessor :name, :player, :life

  def initialize(player, name)
    self.player=player
    self.name=name
    self.life=3
  end

  def get_life()
    puts "You have #{self.life} life remaining"
  end

  def set_life()
    self.life -= 1
    puts "You have #{self.life} life remaining"
  end

  def info
    puts "Player #{player}'s', name is #{name}"  
  end

end