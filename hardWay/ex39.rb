states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts states['Michigan']
puts states['Florida']

puts '-' * 10
states.each do |state, abbrev|
    puts "#{state} is abbreviates as #{abbrev}"
end

puts '-' * 10
cities.each {|abbrev, city| puts "#{city} is in #{abbrev}"}

puts '-' * 10
states.each do |state, abbrev|
    city = cities[abbrev]
    puts "#{state} is abbreviated by #{abbrev} and has city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
    puts "Go home Texas."
end

city = cities['TX']
city ||= 'Does Not Exist'
puts "City for TX is #{city}"
