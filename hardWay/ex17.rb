from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}."

in_file = open(from_file)
in_data = in_file.read

puts "Inpot size is #{in_data.length} bytes."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, click RETURN to continue."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(in_data)

puts "Done."

out_file.close
in_file.close
