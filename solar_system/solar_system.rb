class Planet
    attr_accessor :name, :description, :population
    @@number_of_planets = 0
    @@planets = []
    def initialize(name, description, population)
        @name = name
        @description = description
        @population = population
        @@number_of_planets += 1
        @@planets << name
    end
end
# newPlanet1 = Planet.new("Mars", "Cold... and everything is red", 0)
# puts newPlanet.population
# puts $planets

class SolarSystem < Planet
    attr_accessor :name
    def initialize(name = "Milky Way")
            @name = name
    end
    def planets
        @@planets
    end
    def number_of_planets
        @@number_of_planets
    end
    def super_nova
        @@planets = []
        @@number_of_planets = 0
    end
end

# newPlanet = Planet.new("Mercury", "Hot Hot Hot!!", 0)
# newPlanet1 = Planet.new("Venus", "Hot-ish!!", 0)
# newPlanet1 = Planet.new("Earth", "Home", 4000000000)
# sol = SolarSystem.new()
# puts sol.planets
# sol.super_nova
# puts sol.planets
# puts sol.number_of_planets
