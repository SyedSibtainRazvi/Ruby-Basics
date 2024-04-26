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

# SELF

puts self

puts self.class

# This is same as self.puts("What is my name?") because self is the default receiver but we do not need it since it is optional
puts("What is my name?")


title1 = "The Three Stooges"
rank1 = 10
puts "#{title1.capitalize} has a rank of #{rank1}."

title2 = "Dictator"
rank2 = 9
puts "#{title2.capitalize} has a rank of #{rank2}."

title3 = "Jumangi"
rank3 = 8
puts "#{title3.capitalize} has a rank of #{rank3}."

# Now clean up this code to make dry, using methods in ruby

def movie_listing
    "Movie: The three stooges"
    # We do not need to explicity return the value because ruby will return the last statement of the method
end

puts movie_listing

def weekday
    current_time = Time.now
    current_time.strftime("%A")
end

# Now we will pass the title and rank as arguments to the method to make the code DRY
def movie_listing(title, rank=0)
    "#{title.capitalize} has a rank of #{rank} as of #{weekday}."
end

puts movie_listing("The Three Stooges", 10)
puts movie_listing("Dictator", 9)
puts movie_listing("Jumangi")

class Movie
    def initialize(title, rank=0)
        # Instance variables are available throughout the class and are prefixed with @
        @the_title = title
        @the_rank = rank
    end

    def listing
        "#{@the_title.capitalize} has a rank of #{@the_rank}."
    end

end

# These are instance methods of the class Movie

movie1 = Movie.new("The Three Stooges", 10)
puts movie1.listing


movie2 = Movie.new("Dictator", 9)
puts movie2.listing

movie3 = Movie.new("Jumangi")
puts movie3.listing

movie4 = Movie.new("Code 6", 8)
puts movie4

# If we do this, puts us is going to try to convert that object into its string representation
# And the way it does this is, it calls the to_s method on the object
# If we do not define to_s method in our class, it will call the to_s method of the parent class which is Object
# And the default to_s method of Object is to return the object's class and object ID and returns something like this
# #<Movie:0x0000000001f3e8a0>
puts movie4.to_s

# Now we will override the to_s method of the Object class in our Movie class
class Movie