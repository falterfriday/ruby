require_relative 'human'

class Samurai < Human
    @@how_many = 0
    def initialize
        @health = 200
        @@how_many += 1
    end
    def death_blow(object)
        object.health = 0
    end
    def meditate
        @health = 200
    end
end
