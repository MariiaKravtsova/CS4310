file_name = ARGV.first

puts "We are going to erase #{file_name}."
puts "If you do not want that click CTRL+C."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening file #{file_name} ..."
target = open(file_name, 'w')

puts "Truncate file."
target.truncate(0)

puts "Please enter 2 lines."
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp

puts "Writing to file ..."

target.write(line1)
target.write("\n")
target.write(line2)
target.close
