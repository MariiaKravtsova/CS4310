people = 20
cats = 30
dogs = 15

if people < cats
    puts "Too many cats!"
end

if people > cats
    puts "Not enough cats!"
end

if people < dogs
    puts "The world is drooled on!"
end

dogs += 5

if people >= dogs
    puts "People are greater than or equal to dogs."
end

if people == dogs
    puts "People are dogs."
end

puts "What do I want for dinner?"
dinner = gets.chomp

if dinner == "chilli"
    puts "Great, I made that today."
elsif dinner == "salmon"
    puts "I guess I should defrost that."
else
    puts "Go buy it at the store."
end
