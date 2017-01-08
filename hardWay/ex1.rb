puts 'Hello World.'
puts '"Hello World!" - he said'

# this is a comment.

puts "3 + 5 = #{3+5}"
puts 3 + 5
puts "Is it less or equal? #{5 <= -2}"

cars = 100
drivers = 40.0

puts "There are #{cars} cars available."
puts "There are #{drivers} drivers available."
puts "The ratio is #{cars / drivers} cars to drivers."

ratio_drivers_to_cars = drivers / cars
puts "The ratio is #{ratio_drivers_to_cars} drivers to car."

height_feet = 5
height_inches = 11
puts
puts "I'm #{height_feet} feet and #{height_inches} inches."

puts
puts "I weight #{70 * 2.2} lbs."

first_name = 'Mariia'
last_name = 'Kravtsova'
puts first_name + ' ' + last_name

puts "Its fleece was white as #{'snow'}."
puts "." * 10

print "Cheese"
puts "Burger"

formatter = "%{first} *** %{second}"
puts formatter % {first: 1, second: 2}

puts %q{
    I can type
    my heart out.
}

puts "Monday\nTuesday"

puts """To Do:
\t* Finish this book
\t* Build a project in Ruby
\t* Study Algorithms like I was supposed to
"""

puts
print "Hi, what's your name?"
name = gets.chomp
puts "Nice to meet you #{name}."

puts "Guess a number?"
number = gets.chomp.to_f
puts number * 4
