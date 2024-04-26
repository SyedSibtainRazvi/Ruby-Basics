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
end


calculation = Calculator.new(20, 10)

puts calculation.add
puts calculation.subtract