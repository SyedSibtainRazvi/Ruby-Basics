class Snack
    attr_reader :name, :carbs

    def initialize(name, rank=0)
        @name = name.capitalize
        @carbs = carbs
    end
end

# But the same as above can be done using struct
# :name and :carbs are symbols

Snack = Struct.new(:name, :carbs)

chocholate = Snack.new("Chocholate", 10)
puts chocholate.name.capitalize