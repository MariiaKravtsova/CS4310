ten_things = "Apples Oranges Crows Telephone Light Sugar"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length != 10
    next_one = more_stuff.pop
    stuff.push(next_one)
    stuff.length
end

stuff.each {|i| print " ", i}

puts
puts stuff[1]
puts stuff[-1]
puts stuff.pop
puts stuff.join(' ')
