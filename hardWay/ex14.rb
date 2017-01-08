user_name = ARGV.first
puts "Your user name is #{user_name}."
puts "Your user name is #{ARGV.first}."

prompt = '> '
puts "Where do you live?", prompt
location = $stdin.gets.chomp
