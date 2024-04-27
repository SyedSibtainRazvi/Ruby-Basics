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

    def thumbs_up 
        @the_rank += 1
    end

    def thumbs_down
        @the_rank -= 1
    end

    attr_reader :the_title 

    # We can also define a method to change the title of the movie, these are called setter/writer methods
    def new_title(new_title)
        @the_title = new_title
    end

    def normalised_rank
        @the_rank / 10
    end

    def listing
        "#{@the_title.capitalize} has a rank of #{@the_rank}."
    end

end

# These are instance methods of the class Movie

#Class names start with an uppercase letter.
# Method names start with a lowercase letter.
# Variable names start with a lowercase letter.
# Instances variables start with an @ sign.

movie1 = Movie.new("The Three Stooges", 10)
movie1.thumbs_up
puts movie1.listing


movie2 = Movie.new("Dictator", 9)
movie2.thumbs_down
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
# class Movie


#object state is private to the object and can only be accessed by the object itself
#object behavior is public and can be accessed by other objects

# And if we do the below, we get noMethodError because the title is private to the object and can only be accessed by the object itself
#object encapsulates its state and behavior
    # puts movie1.title

# We can define a method in the class to return the title of the movie
# Also called a getter method

# def title
#     @the_title
# end

# or we can use the attr_reader method to define the getter method
# attr_reader :the_title, rank, etc

puts movie1.the_title

 # The shortcut to define getter and setter methods is to use the attr_accessor method
 # attr_accessor :the_title, :the_rank . This is the same as defining both getter and setter methods
 #attr_writer :the_title 
 # we can define them at the top of the class
    
     # We can also define a method to change the title of the movie, these are called setter/writer methods
    # def new_title(new_title)
    #     @the_title = new_title
    # end

    # Also all our attributes matches the instance variables.
    
    puts movie1.the_title

puts movie1.new_title("The Three Stooges 2")

# Virtual attributes are attributes that are not stored in the object but are calculated on the fly

puts movie1.normalised_rank