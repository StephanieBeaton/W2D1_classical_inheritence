# 1. Define 8 empty classes: Animal, Mammal, Amphibian, Primate, Frog, Bat, Parrot, and Chimpanzee.

# Set up an inheritance structure that makes sense given the phylogenetic position
# of the animal in relation to the others.

# 2. Add instance variables and methods to your different classes.
# These could include things like @num_legs or #warm_blooded?
#(note the # is convention to imply that warm_blooded?
# should be defined a public method, and is not explicit ruby code).

# Make up your own methods and attributes that make sense on each class.

# Then write a script to prove that your inheritance structure works.
#
#  If you assign @num_legs = 2 in the Primate class,
#  does an instance of Chimpanzee have the same variable and value?

# Hint: you may have to define some reader methods.

module Flight

  # attr_accessor :airspeed_velocity

  # attr_reader :fly

  def fly
    puts "I'm a #{self.class}, I'm flying!"
  end

  def airspeed_velocity=(airspeed_velocity)

      @airspeed_velocity = airspeed_velocity

  end

  def airspeed_velocity

      @airspeed_velocity

  end

end

class Animal

  def initialize
  end

end

class Mammal < Animal

  attr_reader :warm_blooded

  def initialize
    @warm_blooded = true
    super
  end

end

class Amphibian < Animal
  attr_reader :warm_blooded

  def initialize
    @warm_blooded = false
    super
  end

end

class Bat < Mammal

  include Flight

  attr_reader :num_legs

  def initialize
    @num_legs = 2
    super
  end

end


class Primate < Mammal

  attr_reader :num_legs

  def initialize
    @num_legs = 2
    super
  end

end

class Frog < Amphibian

  attr_reader :num_legs

  def initialize
    @num_legs = 4
    super
  end

end

class Chimpanzee < Primate
  def initialize
    super
  end

end

class Parrot < Animal
  include Flight

  attr_reader :num_legs, :warm_blooded

  def initialize
    @num_legs = 0
    @warm_blooded = true
    @airspeed_velocity = '15mph'
    super
  end

end


# test code

polly = Parrot.new
puts "polly.class = #{polly.class}"
puts "Parrot.superclass = #{Parrot.superclass}"
puts "polly.num_legs = #{polly.num_legs} polly.warm_blooded? = #{polly.warm_blooded}"

puts ""
puts "=============================================================================="
puts ""

fred_monkey = Chimpanzee.new

puts "fred_monkey.class = #{fred_monkey.class}"
puts "Chimpanzee.superclass = #{Chimpanzee.superclass}"
puts "Chimpanzee.superclass.superclass = #{Chimpanzee.superclass.superclass}"
puts "Chimpanzee.superclass.superclass.superclass = #{Chimpanzee.superclass.superclass.superclass}"
puts "fred_monkey.num_legs = #{fred_monkey.num_legs} fred_monkey.warm_blooded? = #{fred_monkey.warm_blooded}"

puts ""
puts "=============================================================================="
puts ""


my_frog = Frog.new
puts "my_frog.class = #{my_frog.class}"
puts "Frog.superclass = #{Frog.superclass}"
puts "Frog.superclass.superclass = #{Frog.superclass.superclass}"
puts "Frog.superclass.superclass.superclass = #{Frog.superclass.superclass.superclass}"
puts "my_frog.num_legs = #{my_frog.num_legs} my_frog.warm_blooded? = #{my_frog.warm_blooded}"
puts ""
puts "=============================================================================="
puts ""

batty = Bat.new
puts "batty.class = #{batty.class}"
puts "Bat.superclass = #{Bat.superclass}"
puts "Bat.superclass.superclass = #{Bat.superclass.superclass}"
puts "Bat.superclass.superclass.superclass = #{Bat.superclass.superclass.superclass}"
puts "batty.num_legs = #{batty.num_legs} batty.warm_blooded? = #{batty.warm_blooded}"
puts ""
puts "=============================================================================="
puts ""

puts "polly.fly"
polly.fly
# polly.airspeed_velocity = '20mph'
puts "polly.airspeed_velocity = #{polly.airspeed_velocity}"

puts "batty.fly"
batty.fly
batty.airspeed_velocity=('20 mph')
puts "batty.airspeed_velocity = #{batty.airspeed_velocity}"


