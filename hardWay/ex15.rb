file_name = ARGV.first

txt = open(file_name)

puts "Here's you file #{file_name}: "
print txt.read
txt.close

puts
print "Type the file name again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close
