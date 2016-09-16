class AppleTree
    def initialize
        @height = 0
        @age = 0
        @apples = 0
    end
    def height
        @height
    end
    def age
        @age
    end
    def years_gone_by
        @age += 1
        @height += 2
        @apples = 100
        self
    end
    def apples
        if @age <=3 or @age > 10
            @apples = 0
        else
            @apples
        end
    end
    def pick_apples
        if @apples > 0
            @apples = 0
        elsif @age <= 3
            "tree is too young"
        else
            "tree is too old"
        end
    end
end
