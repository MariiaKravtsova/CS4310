the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']

for number in the_count
    puts number
end

puts
the_count.each do |number|
    puts number
end

puts
fruits.each do |fruit|
    puts fruit
end

puts
fruits.each {|i| puts i}

elements = []

(0..5).each do |i|
    # elements.push(i)
    elements << i
end

puts
elements.each {|i| puts i}
