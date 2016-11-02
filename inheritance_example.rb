class Blop #Third class is created to be the INHERITANCE!

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car<Blop

  def honk_horn
    puts "Beeeeeeep!"
  end 

end

class Bike<Blop

  def ring_bell
    puts "Ring ring!"
  end

end

car1=Car.new
bike1=Bike.new

p car1.accelerate
car1.honk_horn

p bike1.accelerate
bike1.ring_bell
