comment = "Coding is fun"
comment1 = "Hello World"

puts comment

3.times do
puts comment1
end

message = "Welcome!"

3.times do
    puts message.upcase
    end

puts Time.now

puts merits = 10/2
puts demerits = 10/2.5

puts merits.class
puts demerits.class


name1 = 'larry'
name2 = 'curly'
name3 = 'moe'

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"

name1 = "larry"
health1 = 60


name3 = "moe"
health3 = 100
puts "#{name3.capitalize} has a health of #{health3}.".center(50, '*')

name4 = "shemp"
health4 = 90
formatted_name = name4.capitalize.ljust(30, '.')
puts "#{formatted_name} #{health4} health"


puts "sibtain".reverse

# 123.reverse   # This will give an error because reverse method is not defined for integers
puts 123.to_s.reverse # This will work because we are converting integer to string and then reversing it
