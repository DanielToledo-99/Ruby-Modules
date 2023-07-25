module Runner
  VELOCITIES = {
    "caballus" => 40,
    "tigris" => 35
  }.freeze

  def run(time)
    distance = time * VELOCITIES[species]

    puts "I have run #{distance} kilometers"
  end
end

class Animal
  attr_reader :species, :name

  def initialize(info = {})
    @species = info[:species] || "Unknown"
    @name = info[:name] || "Unknown"
  end

  def to_s
    "My name is #{name} and I'm a #{species}"
  end
end

class Horse < Animal
  include Runner

  def initialize(name = nil)
    super({ name: name, species: "caballus" })
  end
end

class Tiger < Animal
  include Runner

  def initialize(name = nil)
    super({ name: name, species: "tigris" })
  end
end