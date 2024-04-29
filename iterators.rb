def once
    puts "I am going to yield"
  yield
    puts "I have yielded"
end

once { puts "Say Syed Sibtain"}