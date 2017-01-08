input_file = ARGV.first

def print_all(f)
    puts f.read
end

def rewind(f)
    f.seek(10)
end

def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First print the file\n"
print_all(current_file)

puts "Rewind the tape\n"
rewind(current_file)

puts "Print by line\n"
line = 1
print_a_line(line, current_file)
print_a_line(line += 1, current_file)
