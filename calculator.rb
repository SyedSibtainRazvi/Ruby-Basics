class Calculator
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end

    def add 
        @num1 + @num2
    end

    def subtract 
        @num1 - @num2
    end

    def roll_die
        rand(1..6)
    end
end


calculation = Calculator.new(20, 10)

puts calculation.add
puts number = calculation.roll_die
puts calculation.subtract

