def thrice
    puts "I am going to yield"
     yield 1
     yield 2
     yield 3
    puts "I have yielded"
end

thrice { |number| puts "Say Syed Sibtain",number}