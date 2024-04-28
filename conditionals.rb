require_relative 'movie'

movie1 = Movie.new("The Three Stooges", 10)

# This is a conditional statement
if movie1.rank >= 10
    puts "Hit movie, great"
else
    puts "Blahhh, Flop"
end